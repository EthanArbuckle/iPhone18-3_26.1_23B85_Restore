@interface _NTKDFaceSnapshotObject
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation _NTKDFaceSnapshotObject

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(_NTKDFaceSnapshotObject *)self face];
    v6 = [v4 face];
    if ([v5 isEquivalentToFace:v6])
    {
      v7 = [(_NTKDFaceSnapshotObject *)self key];
      v8 = [v4 key];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(_NTKDFaceSnapshotObject *)self options];
        v10 = [v4 options];
        if ([v9 isEqualToDictionary:v10])
        {
          v11 = [(_NTKDFaceSnapshotObject *)self face];
          v12 = [(_NTKDFaceSnapshotObject *)self context];
          v13 = [v4 context];
          v20 = v11;
          v14 = v11;
          v15 = v12;
          v16 = v13;
          if ([v14 snapshotContext:v15 isStaleRelativeToContext:v13])
          {
            LOBYTE(v17) = 0;
          }

          else
          {
            v18 = [(_NTKDFaceSnapshotObject *)self snapshotStale];
            v17 = v18 ^ [v4 snapshotStale] ^ 1;
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