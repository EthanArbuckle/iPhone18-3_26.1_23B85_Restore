@interface PBMasterInfo
- (PBMasterInfo)init;
- (id)slideLayoutForSlideHolder:(id)a3;
- (id)slideLayoutForXmlLayoutId:(unsigned __int16)a3;
- (id)uniqueXmlSlideLayout;
- (void)cacheSlideLayouts;
- (void)cacheTargetLayoutType:(int)a3;
- (void)dealloc;
- (void)setSlideLayout:(id)a3 forXmlLayoutId:(unsigned __int16)a4;
@end

@implementation PBMasterInfo

- (PBMasterInfo)init
{
  v6.receiver = self;
  v6.super_class = PBMasterInfo;
  v2 = [(PBMasterInfo *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mTgtSlideLayoutArray = v2->mTgtSlideLayoutArray;
    v2->mTgtSlideLayoutArray = v3;

    operator new();
  }

  return 0;
}

- (void)cacheSlideLayouts
{
  v3 = layoutMapForSlideMaster(self->mSlideMaster);
  mLayoutMap = self->mLayoutMap;
  self->mLayoutMap = v3;
}

- (void)dealloc
{
  mSrcTextStyling = self->mSrcTextStyling;
  if (mSrcTextStyling)
  {
    v4 = *mSrcTextStyling;
    if (*mSrcTextStyling)
    {
      mSrcTextStyling[1] = v4;
      operator delete(v4);
    }

    MEMORY[0x25F897000](mSrcTextStyling, 0x20C40960023A9);
  }

  self->mSrcTextStyling = 0;
  v5.receiver = self;
  v5.super_class = PBMasterInfo;
  [(PBMasterInfo *)&v5 dealloc];
}

- (void)cacheTargetLayoutType:(int)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&a3];
  if ([(NSMutableArray *)self->mTgtSlideLayoutArray indexOfObject:?]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->mTgtSlideLayoutArray addObject:v4];
  }
}

- (id)slideLayoutForSlideHolder:(id)a3
{
  v4 = a3;
  if (![(PBMasterInfo *)self useXmlBlobs]|| (([(ESDContainer *)v4 firstChildOfType:1058], v5 = objc_claimAutoreleasedReturnValue(), Atom = ESDAtomAccess<PptRoundTripContentMasterIdAtom>::extractAtom(v5, 0), v5, !Atom) || (v7 = Atom[12], v7 != [(PBMasterInfo *)self xmlMainMasterId]) || ([(PBMasterInfo *)self slideLayoutForXmlLayoutId:*(Atom + 26)], (v8 = objc_claimAutoreleasedReturnValue()) == 0)) && (([(ESDContainer *)v4 firstChildOfType:1053], v9 = objc_claimAutoreleasedReturnValue(), v10 = ESDAtomAccess<PptRoundTripCompositeMasterIdAtom>::extractAtom(v9, 0), v9, !v10) || (v11 = v10[12], v11 != [(PBMasterInfo *)self xmlMainMasterId]) || ([(PBMasterInfo *)self uniqueXmlSlideLayout], (v8 = objc_claimAutoreleasedReturnValue()) == 0)))
  {
    v12 = pdSlideLayoutTypeForPptSlideHolder(v4);
    mLayoutMap = self->mLayoutMap;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
    v8 = [(NSDictionary *)mLayoutMap objectForKeyedSubscript:v14];
  }

  return v8;
}

- (void)setSlideLayout:(id)a3 forXmlLayoutId:(unsigned __int16)a4
{
  v4 = a4;
  v8 = a3;
  mXmlLayoutMap = self->mXmlLayoutMap;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v4];
  [(NSMutableDictionary *)mXmlLayoutMap setObject:v8 forKeyedSubscript:v7];
}

- (id)slideLayoutForXmlLayoutId:(unsigned __int16)a3
{
  mXmlLayoutMap = self->mXmlLayoutMap;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a3];
  v5 = [(NSMutableDictionary *)mXmlLayoutMap objectForKeyedSubscript:v4];

  return v5;
}

- (id)uniqueXmlSlideLayout
{
  v3 = [(NSMutableDictionary *)self->mXmlLayoutMap allKeys];
  mXmlLayoutMap = self->mXmlLayoutMap;
  v5 = [v3 firstObject];
  v6 = [(NSMutableDictionary *)mXmlLayoutMap objectForKeyedSubscript:v5];

  return v6;
}

@end