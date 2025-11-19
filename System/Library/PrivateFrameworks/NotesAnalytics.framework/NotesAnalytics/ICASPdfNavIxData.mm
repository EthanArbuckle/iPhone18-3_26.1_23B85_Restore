@interface ICASPdfNavIxData
- (ICASPdfNavIxData)initWithHasGestures:(id)a3 hasScroll:(id)a4 hasPagination:(id)a5 hasPinchZoom:(id)a6 hasPinchToExpandState:(id)a7;
- (id)toDict;
@end

@implementation ICASPdfNavIxData

- (ICASPdfNavIxData)initWithHasGestures:(id)a3 hasScroll:(id)a4 hasPagination:(id)a5 hasPinchZoom:(id)a6 hasPinchToExpandState:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = ICASPdfNavIxData;
  v17 = [(ICASPdfNavIxData *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_hasGestures, a3);
    objc_storeStrong(&v18->_hasScroll, a4);
    objc_storeStrong(&v18->_hasPagination, a5);
    objc_storeStrong(&v18->_hasPinchZoom, a6);
    objc_storeStrong(&v18->_hasPinchToExpandState, a7);
  }

  return v18;
}

- (id)toDict
{
  v23[5] = *MEMORY[0x277D85DE8];
  v22[0] = @"hasGestures";
  v20 = [(ICASPdfNavIxData *)self hasGestures];
  if (v20)
  {
    v3 = [(ICASPdfNavIxData *)self hasGestures];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;
  v23[0] = v3;
  v22[1] = @"hasScroll";
  v5 = [(ICASPdfNavIxData *)self hasScroll];
  if (v5)
  {
    v6 = [(ICASPdfNavIxData *)self hasScroll];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;
  v23[1] = v6;
  v22[2] = @"hasPagination";
  v8 = [(ICASPdfNavIxData *)self hasPagination];
  if (v8)
  {
    v9 = [(ICASPdfNavIxData *)self hasPagination];
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;
  v23[2] = v9;
  v22[3] = @"hasPinchZoom";
  v11 = [(ICASPdfNavIxData *)self hasPinchZoom];
  if (v11)
  {
    v12 = [(ICASPdfNavIxData *)self hasPinchZoom];
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;
  v23[3] = v12;
  v22[4] = @"hasPinchToExpandState";
  v14 = [(ICASPdfNavIxData *)self hasPinchToExpandState];
  if (v14)
  {
    v15 = [(ICASPdfNavIxData *)self hasPinchToExpandState];
  }

  else
  {
    v15 = objc_opt_new();
  }

  v16 = v15;
  v23[4] = v15;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end