@interface PBMasterInfo
- (PBMasterInfo)init;
- (id)slideLayoutForSlideHolder:(id)holder;
- (id)slideLayoutForXmlLayoutId:(unsigned __int16)id;
- (id)uniqueXmlSlideLayout;
- (void)cacheSlideLayouts;
- (void)cacheTargetLayoutType:(int)type;
- (void)dealloc;
- (void)setSlideLayout:(id)layout forXmlLayoutId:(unsigned __int16)id;
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

- (void)cacheTargetLayoutType:(int)type
{
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&type];
  if ([(NSMutableArray *)self->mTgtSlideLayoutArray indexOfObject:?]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->mTgtSlideLayoutArray addObject:v4];
  }
}

- (id)slideLayoutForSlideHolder:(id)holder
{
  holderCopy = holder;
  if (![(PBMasterInfo *)self useXmlBlobs]|| (([(ESDContainer *)holderCopy firstChildOfType:1058], v5 = objc_claimAutoreleasedReturnValue(), Atom = ESDAtomAccess<PptRoundTripContentMasterIdAtom>::extractAtom(v5, 0), v5, !Atom) || (v7 = Atom[12], v7 != [(PBMasterInfo *)self xmlMainMasterId]) || ([(PBMasterInfo *)self slideLayoutForXmlLayoutId:*(Atom + 26)], (v8 = objc_claimAutoreleasedReturnValue()) == 0)) && (([(ESDContainer *)holderCopy firstChildOfType:1053], v9 = objc_claimAutoreleasedReturnValue(), v10 = ESDAtomAccess<PptRoundTripCompositeMasterIdAtom>::extractAtom(v9, 0), v9, !v10) || (v11 = v10[12], v11 != [(PBMasterInfo *)self xmlMainMasterId]) || ([(PBMasterInfo *)self uniqueXmlSlideLayout], (v8 = objc_claimAutoreleasedReturnValue()) == 0)))
  {
    v12 = pdSlideLayoutTypeForPptSlideHolder(holderCopy);
    mLayoutMap = self->mLayoutMap;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
    v8 = [(NSDictionary *)mLayoutMap objectForKeyedSubscript:v14];
  }

  return v8;
}

- (void)setSlideLayout:(id)layout forXmlLayoutId:(unsigned __int16)id
{
  idCopy = id;
  layoutCopy = layout;
  mXmlLayoutMap = self->mXmlLayoutMap;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:idCopy];
  [(NSMutableDictionary *)mXmlLayoutMap setObject:layoutCopy forKeyedSubscript:v7];
}

- (id)slideLayoutForXmlLayoutId:(unsigned __int16)id
{
  mXmlLayoutMap = self->mXmlLayoutMap;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:id];
  v5 = [(NSMutableDictionary *)mXmlLayoutMap objectForKeyedSubscript:v4];

  return v5;
}

- (id)uniqueXmlSlideLayout
{
  allKeys = [(NSMutableDictionary *)self->mXmlLayoutMap allKeys];
  mXmlLayoutMap = self->mXmlLayoutMap;
  firstObject = [allKeys firstObject];
  v6 = [(NSMutableDictionary *)mXmlLayoutMap objectForKeyedSubscript:firstObject];

  return v6;
}

@end