@interface MKHomescreen
- (MKHomescreen)initWithID:(int64_t)d page:(int64_t)page folder:(int64_t)folder x:(int64_t)x y:(int64_t)y bundleID:(id)iD maxWidth:(int64_t)width maxHeight:(int64_t)self0;
- (MKHomescreen)initWithID:(int64_t)d page:(int64_t)page x:(int64_t)x y:(int64_t)y name:(id)name maxWidth:(int64_t)width maxHeight:(int64_t)height;
- (MKHomescreen)initWithID:(int64_t)d page:(int64_t)page x:(int64_t)x y:(int64_t)y width:(int64_t)width height:(int64_t)height bundleID:(id)iD host:(id)self0 kind:(id)self1 maxWidth:(int64_t)self2 maxHeight:(int64_t)self3;
@end

@implementation MKHomescreen

- (MKHomescreen)initWithID:(int64_t)d page:(int64_t)page folder:(int64_t)folder x:(int64_t)x y:(int64_t)y bundleID:(id)iD maxWidth:(int64_t)width maxHeight:(int64_t)self0
{
  iDCopy = iD;
  v20.receiver = self;
  v20.super_class = MKHomescreen;
  v17 = [(MKHomescreen *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(MKHomescreen *)v17 setID:d];
    [(MKHomescreen *)v18 setPage:page];
    [(MKHomescreen *)v18 setFolder:folder];
    [(MKHomescreen *)v18 setX:x];
    [(MKHomescreen *)v18 setY:y];
    [(MKHomescreen *)v18 setBundleID:iDCopy];
    [(MKHomescreen *)v18 setWidth:1];
    [(MKHomescreen *)v18 setHeight:1];
    [(MKHomescreen *)v18 setMaxWidth:width];
    [(MKHomescreen *)v18 setMaxHeight:height];
  }

  return v18;
}

- (MKHomescreen)initWithID:(int64_t)d page:(int64_t)page x:(int64_t)x y:(int64_t)y name:(id)name maxWidth:(int64_t)width maxHeight:(int64_t)height
{
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = MKHomescreen;
  v16 = [(MKHomescreen *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(MKHomescreen *)v16 setID:d];
    [(MKHomescreen *)v17 setPage:page];
    [(MKHomescreen *)v17 setFolder:-1];
    [(MKHomescreen *)v17 setX:x];
    [(MKHomescreen *)v17 setY:y];
    [(MKHomescreen *)v17 setWidth:1];
    [(MKHomescreen *)v17 setHeight:1];
    [(MKHomescreen *)v17 setName:nameCopy];
    [(MKHomescreen *)v17 setMaxWidth:width];
    [(MKHomescreen *)v17 setMaxHeight:height];
  }

  return v17;
}

- (MKHomescreen)initWithID:(int64_t)d page:(int64_t)page x:(int64_t)x y:(int64_t)y width:(int64_t)width height:(int64_t)height bundleID:(id)iD host:(id)self0 kind:(id)self1 maxWidth:(int64_t)self2 maxHeight:(int64_t)self3
{
  iDCopy = iD;
  hostCopy = host;
  kindCopy = kind;
  v26.receiver = self;
  v26.super_class = MKHomescreen;
  v23 = [(MKHomescreen *)&v26 init];
  v24 = v23;
  if (v23)
  {
    [(MKHomescreen *)v23 setID:d];
    [(MKHomescreen *)v24 setPage:page];
    [(MKHomescreen *)v24 setFolder:-1];
    [(MKHomescreen *)v24 setX:x];
    [(MKHomescreen *)v24 setY:y];
    [(MKHomescreen *)v24 setBundleID:iDCopy];
    [(MKHomescreen *)v24 setWidth:width];
    [(MKHomescreen *)v24 setHeight:height];
    [(MKHomescreen *)v24 setBundleID:iDCopy];
    [(MKHomescreen *)v24 setHost:hostCopy];
    [(MKHomescreen *)v24 setKind:kindCopy];
    [(MKHomescreen *)v24 setMaxWidth:maxWidth];
    [(MKHomescreen *)v24 setMaxHeight:maxHeight];
  }

  return v24;
}

@end