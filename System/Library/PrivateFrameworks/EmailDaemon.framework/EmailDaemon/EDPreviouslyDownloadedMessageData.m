@interface EDPreviouslyDownloadedMessageData
- (EDPreviouslyDownloadedMessageData)initWithHeadersOnlyData:(id)a3 partialMessageData:(id)a4 hasFullMessageData:(BOOL)a5 hasPartialMessageData:(BOOL)a6 mimeParts:(id)a7;
@end

@implementation EDPreviouslyDownloadedMessageData

- (EDPreviouslyDownloadedMessageData)initWithHeadersOnlyData:(id)a3 partialMessageData:(id)a4 hasFullMessageData:(BOOL)a5 hasPartialMessageData:(BOOL)a6 mimeParts:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = EDPreviouslyDownloadedMessageData;
  v16 = [(EDPreviouslyDownloadedMessageData *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_headersOnlyData, a3);
    objc_storeStrong(&v17->_partialMessageData, a4);
    v17->_hasFullMessageData = a5;
    v17->_hasPartialMessageData = a6;
    v18 = [v15 copy];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v17->_mimeParts, v20);
  }

  return v17;
}

@end