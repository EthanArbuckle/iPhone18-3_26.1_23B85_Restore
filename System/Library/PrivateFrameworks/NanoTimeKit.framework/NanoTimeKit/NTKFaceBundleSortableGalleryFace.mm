@interface NTKFaceBundleSortableGalleryFace
- (NTKFaceBundleSortableGalleryFace)initWithFace:(id)a3 priority:(unint64_t)a4;
- (int64_t)compare:(id)a3;
@end

@implementation NTKFaceBundleSortableGalleryFace

- (NTKFaceBundleSortableGalleryFace)initWithFace:(id)a3 priority:(unint64_t)a4
{
  v7 = a3;
  if (v7)
  {
    v12.receiver = self;
    v12.super_class = NTKFaceBundleSortableGalleryFace;
    v8 = [(NTKFaceBundleSortableGalleryFace *)&v12 init];
    v9 = v8;
    if (v8)
    {
      v8->_priority = a4;
      objc_storeStrong(&v8->_face, a3);
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NTKFaceBundleSortableGalleryFace *)self priority];
    if ([v4 priority] == v5)
    {
      v6 = [(NTKFaceBundleSortableGalleryFace *)self face];
      v7 = [v4 face];
      v8 = [v6 name];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = &stru_284110E98;
      }

      v11 = v10;

      v12 = [v7 name];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = &stru_284110E98;
      }

      v15 = v14;

      v16 = [(__CFString *)v11 localizedCaseInsensitiveCompare:v15];
    }

    else
    {
      v17 = [v4 priority];
      if (v17 < [(NTKFaceBundleSortableGalleryFace *)self priority])
      {
        v16 = -1;
      }

      else
      {
        v16 = 1;
      }
    }
  }

  else
  {
    v16 = -1;
  }

  return v16;
}

@end