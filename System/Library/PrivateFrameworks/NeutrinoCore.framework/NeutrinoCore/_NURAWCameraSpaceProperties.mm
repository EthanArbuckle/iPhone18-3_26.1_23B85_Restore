@interface _NURAWCameraSpaceProperties
- (id)description;
@end

@implementation _NURAWCameraSpaceProperties

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  xyzToCamera1 = [(_NURAWCameraSpaceProperties *)self xyzToCamera1];
  xyzToCamera2 = [(_NURAWCameraSpaceProperties *)self xyzToCamera2];
  [(_NURAWCameraSpaceProperties *)self whiteValue];
  v8 = v7;
  [(_NURAWCameraSpaceProperties *)self whiteFactor];
  v10 = [v3 stringWithFormat:@"<%@:%p> xyzToCamera1=%@ xyzToCamera2=%@ whiteValue=%f whiteFactor=%f", v4, self, xyzToCamera1, xyzToCamera2, v8, v9];

  return v10;
}

@end