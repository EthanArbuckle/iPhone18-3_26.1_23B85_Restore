@interface MADChangeTokenEntry
+ (id)entryWithTokenID:(unint64_t)a3 tokenType:(unint64_t)a4 tokenData:(id)a5 date:(id)a6 version:(int)a7;
- (MADChangeTokenEntry)initWithTokenID:(unint64_t)a3 tokenType:(unint64_t)a4 tokenData:(id)a5 date:(id)a6 version:(int)a7;
@end

@implementation MADChangeTokenEntry

- (MADChangeTokenEntry)initWithTokenID:(unint64_t)a3 tokenType:(unint64_t)a4 tokenData:(id)a5 date:(id)a6 version:(int)a7
{
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = MADChangeTokenEntry;
  v14 = [(MADChangeTokenEntry *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_tokenID = a3;
    v14->_tokenType = a4;
    v16 = [MEMORY[0x1E695DEF0] dataWithData:v12];
    tokenData = v15->_tokenData;
    v15->_tokenData = v16;

    objc_storeStrong(&v15->_date, a6);
    v15->_version = a7;
  }

  return v15;
}

+ (id)entryWithTokenID:(unint64_t)a3 tokenType:(unint64_t)a4 tokenData:(id)a5 date:(id)a6 version:(int)a7
{
  v7 = *&a7;
  v11 = a5;
  v12 = a6;
  v13 = [objc_alloc(objc_opt_class()) initWithTokenID:a3 tokenType:a4 tokenData:v11 date:v12 version:v7];

  return v13;
}

@end