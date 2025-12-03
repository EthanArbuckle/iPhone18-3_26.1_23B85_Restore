@interface _HUQuickControlContentCharacteristicWriteQueuedUpdate
- (_HUQuickControlContentCharacteristicWriteQueuedUpdate)initWithCancellationToken:(id)token;
@end

@implementation _HUQuickControlContentCharacteristicWriteQueuedUpdate

- (_HUQuickControlContentCharacteristicWriteQueuedUpdate)initWithCancellationToken:(id)token
{
  tokenCopy = token;
  v11.receiver = self;
  v11.super_class = _HUQuickControlContentCharacteristicWriteQueuedUpdate;
  v6 = [(_HUQuickControlContentCharacteristicWriteQueuedUpdate *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cancellationToken, token);
    v8 = [MEMORY[0x277CBEB58] set];
    affectedCharacteristics = v7->_affectedCharacteristics;
    v7->_affectedCharacteristics = v8;
  }

  return v7;
}

@end