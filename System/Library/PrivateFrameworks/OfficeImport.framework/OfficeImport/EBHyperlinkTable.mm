@interface EBHyperlinkTable
+ (void)readWithState:(id)a3;
@end

@implementation EBHyperlinkTable

+ (void)readWithState:(id)a3
{
  v3 = a3;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v4 = [v3 xlReader];
  (*(*v4 + 480))(v4, &v16);
  v5 = v18 - v17;
  if (((v18 - v17) >> 3))
  {
    v6 = [v3 edSheet];
    v7 = [v6 hyperlinks];
    v8 = (v5 >> 3);

    v9 = 0;
    do
    {
      if (v9 >= ((v18 - v17) >> 3))
      {
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      v10 = v17[v9];
      if (*(v10 + 12) == 2048)
      {
        v11 = 0;
      }

      else
      {
        v12 = [v3 resources];
        v11 = [EBHyperlink edHyperlinkFromXlHLink:v10 edResources:v12];
      }

      v13 = v9 + 1;
      if (v9 + 1 < v8)
      {
        if (v13 >= ((v18 - v17) >> 3))
        {
          std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
        }

        v14 = v17[v13];
        if (*(v14 + 12) == 2048)
        {
          v15 = [v3 resources];
          [EBHyperlink addToolTip:v14 toEdHyperLink:v11 edResources:v15];

          ++v9;
        }
      }

      [v7 addObject:v11];

      ++v9;
    }

    while (v9 < v8);
  }

  v16 = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(&v17);
}

@end