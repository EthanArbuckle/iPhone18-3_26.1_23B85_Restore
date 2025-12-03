@interface _FBSSnapshotLayer
- (CATransform3D)baseTransform;
- (_FBSSnapshotLayer)initWithContextID:(unsigned int)d baseTransform:(CATransform3D *)transform;
@end

@implementation _FBSSnapshotLayer

- (_FBSSnapshotLayer)initWithContextID:(unsigned int)d baseTransform:(CATransform3D *)transform
{
  v13.receiver = self;
  v13.super_class = _FBSSnapshotLayer;
  result = [(_FBSSnapshotLayer *)&v13 init];
  if (result)
  {
    result->_contextID = d;
    v7 = *&transform->m11;
    v8 = *&transform->m13;
    v9 = *&transform->m23;
    *&result->_baseTransform.m21 = *&transform->m21;
    *&result->_baseTransform.m23 = v9;
    *&result->_baseTransform.m11 = v7;
    *&result->_baseTransform.m13 = v8;
    v10 = *&transform->m31;
    v11 = *&transform->m33;
    v12 = *&transform->m43;
    *&result->_baseTransform.m41 = *&transform->m41;
    *&result->_baseTransform.m43 = v12;
    *&result->_baseTransform.m31 = v10;
    *&result->_baseTransform.m33 = v11;
  }

  return result;
}

- (CATransform3D)baseTransform
{
  v3 = *&self->m41;
  *&retstr->m31 = *&self->m33;
  *&retstr->m33 = v3;
  v4 = *&self[1].m11;
  *&retstr->m41 = *&self->m43;
  *&retstr->m43 = v4;
  v5 = *&self->m21;
  *&retstr->m11 = *&self->m13;
  *&retstr->m13 = v5;
  v6 = *&self->m31;
  *&retstr->m21 = *&self->m23;
  *&retstr->m23 = v6;
  return self;
}

@end