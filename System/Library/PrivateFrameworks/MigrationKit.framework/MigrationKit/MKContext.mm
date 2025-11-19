@interface MKContext
- (MKContext)init;
@end

@implementation MKContext

- (MKContext)init
{
  v21.receiver = self;
  v21.super_class = MKContext;
  v2 = [(MKContext *)&v21 init];
  if (v2)
  {
    v3 = objc_alloc_init(MKImportContext);
    [(MKContext *)v2 setApplication:v3];

    v4 = objc_alloc_init(MKImportContext);
    [(MKContext *)v2 setAccount:v4];

    v5 = objc_alloc_init(MKImportContext);
    [(MKContext *)v2 setMessage:v5];

    v6 = objc_alloc_init(MKImportContext);
    [(MKContext *)v2 setContact:v6];

    v7 = objc_alloc_init(MKImportContext);
    [(MKContext *)v2 setCallHistory:v7];

    v8 = objc_alloc_init(MKImportContext);
    [(MKContext *)v2 setCalendar:v8];

    v9 = objc_alloc_init(MKImportContext);
    [(MKContext *)v2 setBookmark:v9];

    v10 = objc_alloc_init(MKImportContext);
    [(MKContext *)v2 setFile:v10];

    v11 = objc_alloc_init(MKImportContext);
    [(MKContext *)v2 setImage:v11];

    v12 = objc_alloc_init(MKImportContext);
    [(MKContext *)v2 setVideo:v12];

    v13 = objc_alloc_init(MKImportContext);
    [(MKContext *)v2 setVoiceMemo:v13];

    v14 = objc_alloc_init(MKImportContext);
    [(MKContext *)v2 setAlbum:v14];

    v15 = objc_alloc_init(MKImportContext);
    [(MKContext *)v2 setContainer:v15];

    v16 = objc_alloc_init(MKImportContext);
    [(MKContext *)v2 setAccessibilitySetting:v16];

    v17 = objc_alloc_init(MKImportContext);
    [(MKContext *)v2 setDisplaySetting:v17];

    v18 = objc_alloc_init(MKImportContext);
    [(MKContext *)v2 setPlaceholder:v18];

    v19 = objc_alloc_init(MKImportContext);
    [(MKContext *)v2 setSim:v19];
  }

  return v2;
}

@end