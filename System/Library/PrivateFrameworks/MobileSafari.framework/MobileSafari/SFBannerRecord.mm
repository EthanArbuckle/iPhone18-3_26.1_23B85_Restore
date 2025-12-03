@interface SFBannerRecord
- (BOOL)updateProductID:(id)d time:(id)time;
- (SFBannerRecord)initWithProductID:(id)d time:(id)time;
@end

@implementation SFBannerRecord

- (SFBannerRecord)initWithProductID:(id)d time:(id)time
{
  dCopy = d;
  timeCopy = time;
  v12.receiver = self;
  v12.super_class = SFBannerRecord;
  v8 = [(SFBannerRecord *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(SFBannerRecord *)v8 updateProductID:dCopy time:timeCopy];
    v10 = v9;
  }

  return v9;
}

- (BOOL)updateProductID:(id)d time:(id)time
{
  dCopy = d;
  timeCopy = time;
  updatedProductIDs = self->_updatedProductIDs;
  if (!updatedProductIDs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v12 = self->_updatedProductIDs;
    self->_updatedProductIDs = array;

    [(NSMutableArray *)self->_updatedProductIDs addObject:dCopy];
    p_lastUpdateTime = &self->_lastUpdateTime;
    goto LABEL_7;
  }

  if (([(NSMutableArray *)updatedProductIDs containsObject:dCopy]& 1) != 0)
  {
LABEL_8:
    v13 = 1;
    goto LABEL_12;
  }

  [timeCopy timeIntervalSinceDate:self->_lastUpdateTime];
  if (v9 >= exp2(([(NSMutableArray *)self->_updatedProductIDs count]- 1)) * 30.0 && [(NSMutableArray *)self->_updatedProductIDs count]<= 3)
  {
    [(NSMutableArray *)self->_updatedProductIDs addObject:dCopy];
    p_lastUpdateTime = &self->_lastUpdateTime;
LABEL_7:
    objc_storeStrong(p_lastUpdateTime, time);
    goto LABEL_8;
  }

  v14 = WBS_LOG_CHANNEL_PREFIXBanners();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [SFBannerRecord updateProductID:v14 time:?];
  }

  v13 = 0;
LABEL_12:

  return v13;
}

@end