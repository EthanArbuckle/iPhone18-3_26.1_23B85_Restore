@interface CKMergeableDeltaMetadata(Serialization)
+ (id)decodeMergeableDeltaMetadata:()Serialization withError:;
+ (id)encodeMergeableDeltaMetadata:()Serialization withError:;
@end

@implementation CKMergeableDeltaMetadata(Serialization)

+ (id)encodeMergeableDeltaMetadata:()Serialization withError:
{
  v11 = 0;
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v11];
  v6 = v11;
  if (v5)
  {
    data = v5;
  }

  else
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  v8 = data;

  if (a4 && v6)
  {
    v9 = v6;
    *a4 = v6;
  }

  return v8;
}

+ (id)decodeMergeableDeltaMetadata:()Serialization withError:
{
  v5 = MEMORY[0x1E696ACD0];
  v6 = MEMORY[0x1E695DFD8];
  v7 = a3;
  v8 = [v6 setWithObjects:{objc_opt_class(), 0}];
  v13 = 0;
  v9 = [v5 unarchivedObjectOfClasses:v8 fromData:v7 error:&v13];

  v10 = v13;
  if (a4 && v10)
  {
    v11 = v10;
    *a4 = v10;
  }

  return v9;
}

@end