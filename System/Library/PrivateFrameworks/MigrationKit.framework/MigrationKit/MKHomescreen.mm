@interface MKHomescreen
- (MKHomescreen)initWithID:(int64_t)a3 page:(int64_t)a4 folder:(int64_t)a5 x:(int64_t)a6 y:(int64_t)a7 bundleID:(id)a8 maxWidth:(int64_t)a9 maxHeight:(int64_t)a10;
- (MKHomescreen)initWithID:(int64_t)a3 page:(int64_t)a4 x:(int64_t)a5 y:(int64_t)a6 name:(id)a7 maxWidth:(int64_t)a8 maxHeight:(int64_t)a9;
- (MKHomescreen)initWithID:(int64_t)a3 page:(int64_t)a4 x:(int64_t)a5 y:(int64_t)a6 width:(int64_t)a7 height:(int64_t)a8 bundleID:(id)a9 host:(id)a10 kind:(id)a11 maxWidth:(int64_t)a12 maxHeight:(int64_t)a13;
@end

@implementation MKHomescreen

- (MKHomescreen)initWithID:(int64_t)a3 page:(int64_t)a4 folder:(int64_t)a5 x:(int64_t)a6 y:(int64_t)a7 bundleID:(id)a8 maxWidth:(int64_t)a9 maxHeight:(int64_t)a10
{
  v16 = a8;
  v20.receiver = self;
  v20.super_class = MKHomescreen;
  v17 = [(MKHomescreen *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(MKHomescreen *)v17 setID:a3];
    [(MKHomescreen *)v18 setPage:a4];
    [(MKHomescreen *)v18 setFolder:a5];
    [(MKHomescreen *)v18 setX:a6];
    [(MKHomescreen *)v18 setY:a7];
    [(MKHomescreen *)v18 setBundleID:v16];
    [(MKHomescreen *)v18 setWidth:1];
    [(MKHomescreen *)v18 setHeight:1];
    [(MKHomescreen *)v18 setMaxWidth:a9];
    [(MKHomescreen *)v18 setMaxHeight:a10];
  }

  return v18;
}

- (MKHomescreen)initWithID:(int64_t)a3 page:(int64_t)a4 x:(int64_t)a5 y:(int64_t)a6 name:(id)a7 maxWidth:(int64_t)a8 maxHeight:(int64_t)a9
{
  v15 = a7;
  v19.receiver = self;
  v19.super_class = MKHomescreen;
  v16 = [(MKHomescreen *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(MKHomescreen *)v16 setID:a3];
    [(MKHomescreen *)v17 setPage:a4];
    [(MKHomescreen *)v17 setFolder:-1];
    [(MKHomescreen *)v17 setX:a5];
    [(MKHomescreen *)v17 setY:a6];
    [(MKHomescreen *)v17 setWidth:1];
    [(MKHomescreen *)v17 setHeight:1];
    [(MKHomescreen *)v17 setName:v15];
    [(MKHomescreen *)v17 setMaxWidth:a8];
    [(MKHomescreen *)v17 setMaxHeight:a9];
  }

  return v17;
}

- (MKHomescreen)initWithID:(int64_t)a3 page:(int64_t)a4 x:(int64_t)a5 y:(int64_t)a6 width:(int64_t)a7 height:(int64_t)a8 bundleID:(id)a9 host:(id)a10 kind:(id)a11 maxWidth:(int64_t)a12 maxHeight:(int64_t)a13
{
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v26.receiver = self;
  v26.super_class = MKHomescreen;
  v23 = [(MKHomescreen *)&v26 init];
  v24 = v23;
  if (v23)
  {
    [(MKHomescreen *)v23 setID:a3];
    [(MKHomescreen *)v24 setPage:a4];
    [(MKHomescreen *)v24 setFolder:-1];
    [(MKHomescreen *)v24 setX:a5];
    [(MKHomescreen *)v24 setY:a6];
    [(MKHomescreen *)v24 setBundleID:v20];
    [(MKHomescreen *)v24 setWidth:a7];
    [(MKHomescreen *)v24 setHeight:a8];
    [(MKHomescreen *)v24 setBundleID:v20];
    [(MKHomescreen *)v24 setHost:v21];
    [(MKHomescreen *)v24 setKind:v22];
    [(MKHomescreen *)v24 setMaxWidth:a12];
    [(MKHomescreen *)v24 setMaxHeight:a13];
  }

  return v24;
}

@end