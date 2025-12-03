@interface CAMPreviewAlignmentModel
- (CAMPreviewAlignmentModel)init;
- (CAMPreviewAlignmentModelObserver)observer;
- (CATransform3D)alignmentTransform;
- (void)_setAlignmentTransform:(CATransform3D *)transform;
- (void)applyDeviceMotion:(id)motion;
- (void)reset;
@end

@implementation CAMPreviewAlignmentModel

- (CAMPreviewAlignmentModel)init
{
  v10.receiver = self;
  v10.super_class = CAMPreviewAlignmentModel;
  v2 = [(CAMPreviewAlignmentModel *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v4 = *(MEMORY[0x1E69792E8] + 80);
    v9[4] = *(MEMORY[0x1E69792E8] + 64);
    v9[5] = v4;
    v5 = *(MEMORY[0x1E69792E8] + 112);
    v9[6] = *(MEMORY[0x1E69792E8] + 96);
    v9[7] = v5;
    v6 = *(MEMORY[0x1E69792E8] + 16);
    v9[0] = *MEMORY[0x1E69792E8];
    v9[1] = v6;
    v7 = *(MEMORY[0x1E69792E8] + 48);
    v9[2] = *(MEMORY[0x1E69792E8] + 32);
    v9[3] = v7;
    [(CAMPreviewAlignmentModel *)v2 _setAlignmentTransform:v9];
    [(CAMPreviewAlignmentModel *)v3 _setAligned:1];
  }

  return v3;
}

- (void)applyDeviceMotion:(id)motion
{
  motionCopy = motion;
  _referenceDeviceMotion = [(CAMPreviewAlignmentModel *)self _referenceDeviceMotion];

  if (_referenceDeviceMotion)
  {
    attitude = [motionCopy attitude];

    motionCopy = [attitude copy];
    _referenceDeviceMotion2 = [(CAMPreviewAlignmentModel *)self _referenceDeviceMotion];
    attitude2 = [_referenceDeviceMotion2 attitude];
    [motionCopy multiplyByInverseOfAttitude:attitude2];

    [motionCopy pitch];
    v10 = v9;
    [motionCopy roll];
    v12 = v11;
    [motionCopy yaw];
    v14 = v13;
    v15 = sqrt(v12 * v12 + v10 * v10 + v14 * v14);
    CEKProgressClamped();
    v17 = v16;
    LODWORD(v16) = 1.0;
    LODWORD(v18) = 1.0;
    LODWORD(v19) = 1.0;
    v20 = [MEMORY[0x1E69793D0] functionWithControlPoints:v16 :0.0 :v18 :v19];
    *&v21 = v17;
    [v20 _solveForInput:v21];
    v23 = v22;

    [(CAMPreviewAlignmentModel *)self opacity];
    if (vabdd_f64(v23, v24) > 0.001)
    {
      [(CAMPreviewAlignmentModel *)self opacity];
      [(CAMPreviewAlignmentModel *)self opacity];
      CEKClamp();
      [(CAMPreviewAlignmentModel *)self _setOpacity:?];
      observer = [(CAMPreviewAlignmentModel *)self observer];
      [observer previewAlignmentModelDidChangeOpacity:self];
    }

    isAligned = [(CAMPreviewAlignmentModel *)self isAligned];
    if (v15 >= 0.0144 || !isAligned)
    {
      isAligned2 = [(CAMPreviewAlignmentModel *)self isAligned];
      if (v15 >= 0.012 || isAligned2)
      {
        v33 = -v12;
        [(CAMPreviewAlignmentModel *)self _setAligned:0];
        memset(&v43, 0, sizeof(v43));
        CATransform3DMakeRotation(&v43, v10, 1.0, 0.0, 0.0);
        memset(&v42, 0, sizeof(v42));
        CATransform3DMakeRotation(&v42, v33, 0.0, 1.0, 0.0);
        memset(&v41, 0, sizeof(v41));
        CATransform3DMakeRotation(&v41, v14, 0.0, 0.0, 1.0);
        memset(&v40, 0, sizeof(v40));
        a = v43;
        b = v41;
        CATransform3DConcat(&v40, &a, &b);
        memset(&a, 0, sizeof(a));
        b = v40;
        v37 = v42;
        CATransform3DConcat(&a, &b, &v37);
        v34 = sin(v33) * -200.0;
        v35 = sin(v10);
        memset(&b, 0, sizeof(b));
        v37 = a;
        CATransform3DTranslate(&b, &v37, v34, v35 * 200.0, sqrt(v35 * 200.0 * (v35 * 200.0) + v34 * v34));
        v37 = b;
        v32 = &v37;
      }

      else
      {
        [(CAMPreviewAlignmentModel *)self _setAligned:1];
        v28 = *(MEMORY[0x1E69792E8] + 80);
        *&v43.m31 = *(MEMORY[0x1E69792E8] + 64);
        *&v43.m33 = v28;
        v29 = *(MEMORY[0x1E69792E8] + 112);
        *&v43.m41 = *(MEMORY[0x1E69792E8] + 96);
        *&v43.m43 = v29;
        v30 = *(MEMORY[0x1E69792E8] + 16);
        *&v43.m11 = *MEMORY[0x1E69792E8];
        *&v43.m13 = v30;
        v31 = *(MEMORY[0x1E69792E8] + 48);
        *&v43.m21 = *(MEMORY[0x1E69792E8] + 32);
        *&v43.m23 = v31;
        v32 = &v43;
      }

      [(CAMPreviewAlignmentModel *)self _setAlignmentTransform:v32, *&v37.m11, *&v37.m13, *&v37.m21, *&v37.m23, *&v37.m31, *&v37.m33, *&v37.m41, *&v37.m43];
      observer2 = [(CAMPreviewAlignmentModel *)self observer];
      [observer2 previewAlignmentModelDidChangeAlignmentTransform:self];
    }
  }

  else
  {
    [(CAMPreviewAlignmentModel *)self _setReferenceDeviceMotion:motionCopy];
  }
}

- (void)reset
{
  [(CAMPreviewAlignmentModel *)self _setReferenceDeviceMotion:0];
  v3 = *(MEMORY[0x1E69792E8] + 80);
  v9[4] = *(MEMORY[0x1E69792E8] + 64);
  v9[5] = v3;
  v4 = *(MEMORY[0x1E69792E8] + 112);
  v9[6] = *(MEMORY[0x1E69792E8] + 96);
  v9[7] = v4;
  v5 = *(MEMORY[0x1E69792E8] + 16);
  v9[0] = *MEMORY[0x1E69792E8];
  v9[1] = v5;
  v6 = *(MEMORY[0x1E69792E8] + 48);
  v9[2] = *(MEMORY[0x1E69792E8] + 32);
  v9[3] = v6;
  [(CAMPreviewAlignmentModel *)self _setAlignmentTransform:v9];
  [(CAMPreviewAlignmentModel *)self _setAligned:1];
  [(CAMPreviewAlignmentModel *)self _setOpacity:0.0];
  observer = [(CAMPreviewAlignmentModel *)self observer];
  [observer previewAlignmentModelDidChangeAlignmentTransform:self];

  observer2 = [(CAMPreviewAlignmentModel *)self observer];
  [observer2 previewAlignmentModelDidChangeOpacity:self];
}

- (CAMPreviewAlignmentModelObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (CATransform3D)alignmentTransform
{
  v3 = *&self->m44;
  *&retstr->m31 = *&self->m42;
  *&retstr->m33 = v3;
  v4 = *&self[1].m14;
  *&retstr->m41 = *&self[1].m12;
  *&retstr->m43 = v4;
  v5 = *&self->m24;
  *&retstr->m11 = *&self->m22;
  *&retstr->m13 = v5;
  v6 = *&self->m34;
  *&retstr->m21 = *&self->m32;
  *&retstr->m23 = v6;
  return self;
}

- (void)_setAlignmentTransform:(CATransform3D *)transform
{
  v3 = *&transform->m11;
  v4 = *&transform->m13;
  v5 = *&transform->m21;
  *&self->_alignmentTransform.m23 = *&transform->m23;
  *&self->_alignmentTransform.m21 = v5;
  *&self->_alignmentTransform.m13 = v4;
  *&self->_alignmentTransform.m11 = v3;
  v6 = *&transform->m31;
  v7 = *&transform->m33;
  v8 = *&transform->m41;
  *&self->_alignmentTransform.m43 = *&transform->m43;
  *&self->_alignmentTransform.m41 = v8;
  *&self->_alignmentTransform.m33 = v7;
  *&self->_alignmentTransform.m31 = v6;
}

@end