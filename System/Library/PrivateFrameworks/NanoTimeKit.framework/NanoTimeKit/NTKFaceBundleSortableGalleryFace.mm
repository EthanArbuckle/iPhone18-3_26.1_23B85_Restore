@interface NTKFaceBundleSortableGalleryFace
- (NTKFaceBundleSortableGalleryFace)initWithFace:(id)face priority:(unint64_t)priority;
- (int64_t)compare:(id)compare;
@end

@implementation NTKFaceBundleSortableGalleryFace

- (NTKFaceBundleSortableGalleryFace)initWithFace:(id)face priority:(unint64_t)priority
{
  faceCopy = face;
  if (faceCopy)
  {
    v12.receiver = self;
    v12.super_class = NTKFaceBundleSortableGalleryFace;
    v8 = [(NTKFaceBundleSortableGalleryFace *)&v12 init];
    v9 = v8;
    if (v8)
    {
      v8->_priority = priority;
      objc_storeStrong(&v8->_face, face);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    priority = [(NTKFaceBundleSortableGalleryFace *)self priority];
    if ([compareCopy priority] == priority)
    {
      face = [(NTKFaceBundleSortableGalleryFace *)self face];
      face2 = [compareCopy face];
      name = [face name];
      v9 = name;
      if (name)
      {
        v10 = name;
      }

      else
      {
        v10 = &stru_284110E98;
      }

      v11 = v10;

      name2 = [face2 name];
      v13 = name2;
      if (name2)
      {
        v14 = name2;
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
      priority2 = [compareCopy priority];
      if (priority2 < [(NTKFaceBundleSortableGalleryFace *)self priority])
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