@interface EBContentFormatTable
+ (void)readWithState:(id)a3;
@end

@implementation EBContentFormatTable

+ (void)readWithState:(id)a3
{
  v3 = a3;
  v4 = [v3 resources];
  v5 = [v4 contentFormats];

  XlContentFormatTable::XlContentFormatTable(&v12);
  v6 = [v3 xlReader];
  (*(*v6 + 176))(v6, &v12);
  if (((v14 - v13) & 0x7FFFFFFF8) != 0)
  {
    v7 = 0;
    v8 = ((v14 - v13) >> 3);
    do
    {
      if (v7 >= ((v14 - v13) >> 3))
      {
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      v9 = *(v13 + 8 * v7);
      v10 = [v3 resources];
      v11 = [EBContentFormat edContentFormatFromXlFormat:v9 edResources:v10];

      [v5 addOrEquivalentObject:v11];
      ++v7;
    }

    while (v8 != v7);
  }

  XlContentFormatTable::~XlContentFormatTable(&v12);
}

@end