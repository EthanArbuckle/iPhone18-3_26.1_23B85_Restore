@interface OADCamera
- (BOOL)isEqual:(id)a3;
- (OADCamera)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation OADCamera

- (OADCamera)init
{
  v6.receiver = self;
  v6.super_class = OADCamera;
  v2 = [(OADCamera *)&v6 init];
  v3 = v2;
  if (v2)
  {
    mRotation = v2->mRotation;
    v2->mRotation = 0;

    v3->mCameraType = 0;
    *&v3->mFieldOfView = 0x3F80000000000000;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(OADRotation3D *)self->mRotation copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->mCameraType;
  *(v5 + 20) = self->mFieldOfView;
  *(v5 + 24) = self->mZoom;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = v4) != 0)
  {
    v6 = v5;
    mRotation = self->mRotation;
    v8 = [v5 rotation];
    if (-[OADRotation3D isEqual:](mRotation, "isEqual:", v8) && (mCameraType = self->mCameraType, mCameraType == [v6 cameraType]) && (mFieldOfView = self->mFieldOfView, objc_msgSend(v6, "fieldOfView"), mFieldOfView == v11))
    {
      mZoom = self->mZoom;
      [v6 zoom];
      v14 = mZoom == v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADCamera;
  v2 = [(OADCamera *)&v4 description];

  return v2;
}

@end