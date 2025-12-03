@interface _NTKDFaceSnapshotObject
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation _NTKDFaceSnapshotObject

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    face = [(_NTKDFaceSnapshotObject *)self face];
    face2 = [equalCopy face];
    if ([face isEquivalentToFace:face2])
    {
      v7 = [(_NTKDFaceSnapshotObject *)self key];
      v8 = [equalCopy key];
      if ([v7 isEqualToString:v8])
      {
        options = [(_NTKDFaceSnapshotObject *)self options];
        options2 = [equalCopy options];
        if ([options isEqualToDictionary:options2])
        {
          face3 = [(_NTKDFaceSnapshotObject *)self face];
          context = [(_NTKDFaceSnapshotObject *)self context];
          context2 = [equalCopy context];
          v20 = face3;
          v14 = face3;
          v15 = context;
          v16 = context2;
          if ([v14 snapshotContext:v15 isStaleRelativeToContext:context2])
          {
            LOBYTE(v17) = 0;
          }

          else
          {
            snapshotStale = [(_NTKDFaceSnapshotObject *)self snapshotStale];
            v17 = snapshotStale ^ [equalCopy snapshotStale] ^ 1;
          }
        }

        else
        {
          LOBYTE(v17) = 0;
        }
      }

      else
      {
        LOBYTE(v17) = 0;
      }
    }

    else
    {
      LOBYTE(v17) = 0;
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

- (unint64_t)hash
{
  v2 = [(_NTKDFaceSnapshotObject *)self key];
  v3 = [v2 hash];

  return v3;
}

@end