@interface NTKCachedPhoto
- (BOOL)load;
- (NTKCachedPhoto)initWithPhoto:(id)a3 index:(int64_t)a4;
@end

@implementation NTKCachedPhoto

- (NTKCachedPhoto)initWithPhoto:(id)a3 index:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = NTKCachedPhoto;
  v8 = [(NTKCachedPhoto *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_photo, a3);
    v9->_index = a4;
  }

  return v9;
}

- (BOOL)load
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(NTKPhoto *)self->_photo imageURL];
  v4 = NTKPhotosSubsampledImageForURLAndSize(v3, 512.0, 600.0);
  image = self->_image;
  self->_image = v4;

  index = self->_index;
  v7 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8)
    {
      v9 = objc_opt_class();
      photo = self->_photo;
      v11 = v9;
      v12 = [(NTKPhoto *)photo imageURL];
      v13 = [v12 path];
      v14 = self->_image;
      v23 = 138412802;
      v24 = v9;
      v25 = 2112;
      *v26 = v13;
      *&v26[8] = 2112;
      *&v26[10] = v14;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "%@: loading image %@ ==> %@", &v23, 0x20u);
    }
  }

  else if (v8)
  {
    v15 = objc_opt_class();
    v16 = self->_photo;
    v17 = self->_index;
    v18 = v15;
    v19 = [(NTKPhoto *)v16 imageURL];
    v20 = [v19 path];
    v21 = self->_image;
    v23 = 138413058;
    v24 = v15;
    v25 = 1024;
    *v26 = v17;
    *&v26[4] = 2112;
    *&v26[6] = v20;
    *&v26[14] = 2112;
    *&v26[16] = v21;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "%@: loading index %d image %@ ==> %@", &v23, 0x26u);
  }

  return self->_image != 0;
}

@end