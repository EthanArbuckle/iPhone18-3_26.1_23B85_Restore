@interface EBHyperlinkTable
+ (void)readWithState:(id)state;
@end

@implementation EBHyperlinkTable

+ (void)readWithState:(id)state
{
  stateCopy = state;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  xlReader = [stateCopy xlReader];
  (*(*xlReader + 480))(xlReader, &v16);
  v5 = v18 - v17;
  if (((v18 - v17) >> 3))
  {
    edSheet = [stateCopy edSheet];
    hyperlinks = [edSheet hyperlinks];
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
        resources = [stateCopy resources];
        v11 = [EBHyperlink edHyperlinkFromXlHLink:v10 edResources:resources];
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
          resources2 = [stateCopy resources];
          [EBHyperlink addToolTip:v14 toEdHyperLink:v11 edResources:resources2];

          ++v9;
        }
      }

      [hyperlinks addObject:v11];

      ++v9;
    }

    while (v9 < v8);
  }

  v16 = &unk_286EC9BE0;
  CsSimpleHeapVector<XlRecord>::~CsSimpleHeapVector(&v17);
}

@end