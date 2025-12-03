@interface PDParagraphBuild
- (BOOL)isEqual:(id)equal;
- (PDParagraphBuild)init;
- (id)addTimeNodeData;
- (unint64_t)hash;
@end

@implementation PDParagraphBuild

- (PDParagraphBuild)init
{
  v6.receiver = self;
  v6.super_class = PDParagraphBuild;
  v2 = [(PDBuild *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mTimeNodeDataList = v2->mTimeNodeDataList;
    v2->mTimeNodeDataList = v3;

    v2->mType = 4;
  }

  return v2;
}

- (id)addTimeNodeData
{
  v3 = objc_alloc_init(PDTimeNode);
  [(NSMutableArray *)self->mTimeNodeDataList addObject:v3];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, equalCopy);
  v7 = v6;
  if (v6 && (mAutoAdvanceTime = self->mAutoAdvanceTime, [v6 autoAdvanceTime], mAutoAdvanceTime == v9) && (mIsReversedParagraphOrder = self->mIsReversedParagraphOrder, mIsReversedParagraphOrder == objc_msgSend(v7, "isReversedParagraphOrder")) && (mBuildLevel = self->mBuildLevel, mBuildLevel == objc_msgSend(v7, "buildLevel")) && (mType = self->mType, mType == objc_msgSend(v7, "type")) && (mTimeNodeDataList = self->mTimeNodeDataList, objc_msgSend(v7, "timeNodeDataList"), v14 = objc_claimAutoreleasedReturnValue(), LOBYTE(mTimeNodeDataList) = (mTimeNodeDataList == 0) ^ (v14 != 0), v14, (mTimeNodeDataList & 1) != 0) && ((v15 = self->mTimeNodeDataList) == 0 || (objc_msgSend(v7, "timeNodeDataList"), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[NSMutableArray isEqual:](v15, "isEqual:", v16), v16, (v17 & 1) != 0)))
  {

    v20.receiver = self;
    v20.super_class = PDParagraphBuild;
    v18 = [(PDBuild *)&v20 isEqual:equalCopy];
  }

  else
  {

    v18 = 0;
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = (self->mAutoAdvanceTime << 8) + ([(NSMutableArray *)self->mTimeNodeDataList count]<< 16);
  v4 = self->mType ^ self->mBuildLevel;
  v6.receiver = self;
  v6.super_class = PDParagraphBuild;
  return v3 + ([(PDBuild *)&v6 hash]^ v4);
}

@end