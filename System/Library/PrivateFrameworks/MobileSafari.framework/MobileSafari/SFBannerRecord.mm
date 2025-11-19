@interface SFBannerRecord
- (BOOL)updateProductID:(id)a3 time:(id)a4;
- (SFBannerRecord)initWithProductID:(id)a3 time:(id)a4;
@end

@implementation SFBannerRecord

- (SFBannerRecord)initWithProductID:(id)a3 time:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SFBannerRecord;
  v8 = [(SFBannerRecord *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(SFBannerRecord *)v8 updateProductID:v6 time:v7];
    v10 = v9;
  }

  return v9;
}

- (BOOL)updateProductID:(id)a3 time:(id)a4
{
  v6 = a3;
  v7 = a4;
  updatedProductIDs = self->_updatedProductIDs;
  if (!updatedProductIDs)
  {
    v11 = [MEMORY[0x1E695DF70] array];
    v12 = self->_updatedProductIDs;
    self->_updatedProductIDs = v11;

    [(NSMutableArray *)self->_updatedProductIDs addObject:v6];
    p_lastUpdateTime = &self->_lastUpdateTime;
    goto LABEL_7;
  }

  if (([(NSMutableArray *)updatedProductIDs containsObject:v6]& 1) != 0)
  {
LABEL_8:
    v13 = 1;
    goto LABEL_12;
  }

  [v7 timeIntervalSinceDate:self->_lastUpdateTime];
  if (v9 >= exp2(([(NSMutableArray *)self->_updatedProductIDs count]- 1)) * 30.0 && [(NSMutableArray *)self->_updatedProductIDs count]<= 3)
  {
    [(NSMutableArray *)self->_updatedProductIDs addObject:v6];
    p_lastUpdateTime = &self->_lastUpdateTime;
LABEL_7:
    objc_storeStrong(p_lastUpdateTime, a4);
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