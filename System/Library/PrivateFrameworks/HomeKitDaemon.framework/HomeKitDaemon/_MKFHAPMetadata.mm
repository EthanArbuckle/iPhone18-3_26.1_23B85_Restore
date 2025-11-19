@interface _MKFHAPMetadata
+ (id)modelIDForParentRelationshipTo:(id)a3;
- (BOOL)validateForInsertOrUpdate:(id *)a3;
- (MKFHAPMetadataDatabaseID)databaseID;
@end

@implementation _MKFHAPMetadata

- (MKFHAPMetadataDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFHAPMetadataDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)validateForInsertOrUpdate:(id *)a3
{
  v9.receiver = self;
  v9.super_class = _MKFHAPMetadata;
  LODWORD(v5) = [(_MKFModel *)&v9 validateForInsertOrUpdate:?];
  if (v5)
  {
    v6 = [(_MKFHAPMetadata *)self homeManager];

    if (v6)
    {
      LOBYTE(v5) = 1;
    }

    else if (a3)
    {
      v7 = [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:@"homeManager is required"];
      v5 = v7;
      LOBYTE(v5) = 0;
      *a3 = v7;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

+ (id)modelIDForParentRelationshipTo:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

@end