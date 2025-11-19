@interface MSVPropertyDescription
@end

@implementation MSVPropertyDescription

uint64_t ___MSVPropertyDescription_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 componentsSeparatedByString:@"="];
  v6 = [v5 firstObject];

  v7 = [v4 componentsSeparatedByString:@"="];

  v8 = [v7 firstObject];

  v9 = [&unk_1F215CA40 indexOfObject:v6];
  v10 = [&unk_1F215CA40 indexOfObject:v8];
  v11 = -1;
  if (v9 >= v10)
  {
    v11 = 1;
  }

  if (v9 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

@end