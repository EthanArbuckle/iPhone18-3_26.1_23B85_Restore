@interface USBAudioAsset
- (BOOL)getNextCommandData:(char *)a3 length:(unsigned int)a4 offset:(unsigned int *)a5;
- (USBAudioAsset)initWithUarpAsset:(uarpPlatformAsset *)a3 nextAsset:(id)a4;
- (unsigned)getNextCommandLength;
@end

@implementation USBAudioAsset

- (USBAudioAsset)initWithUarpAsset:(uarpPlatformAsset *)a3 nextAsset:(id)a4
{
  v7 = a4;
  v15.receiver = self;
  v15.super_class = USBAudioAsset;
  v8 = [(USBAudioAsset *)&v15 init];
  if (v8)
  {
    v9 = os_log_create("com.apple.accessoryupdater.uarp", "dfuUpdater");
    v10 = *(v8 + 1);
    *(v8 + 1) = v9;

    v11 = *(v8 + 1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1000175FC(v11);
    }

    *(v8 + 33) = a3;
    objc_storeStrong(v8 + 36, a4);
    *(v8 + 1) = 0u;
    *(v8 + 13) = 0u;
    *(v8 + 14) = 0u;
    *(v8 + 11) = 0u;
    *(v8 + 12) = 0u;
    *(v8 + 9) = 0u;
    *(v8 + 10) = 0u;
    *(v8 + 7) = 0u;
    *(v8 + 8) = 0u;
    *(v8 + 5) = 0u;
    *(v8 + 6) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    *(v8 + 2) = 0u;
    *(v8 + 2) = sub_10000937C;
    *(v8 + 24) = sub_100009410;
    *(v8 + 10) = sub_100009764;
    *(v8 + 11) = sub_10000980C;
    *(v8 + 34) = v8 + 16;
    v12 = [NSMutableData alloc];
    v13 = *(v8 + 30);
    *(v8 + 30) = v12;
  }

  return v8;
}

- (unsigned)getNextCommandLength
{
  v3 = self->_currentPayloadOffset + 8;
  if (v3 > [(NSMutableData *)self->_payload length])
  {
    return 0;
  }

  currentPayloadOffset = self->_currentPayloadOffset;
  v6 = 0;
  [(NSMutableData *)self->_payload getBytes:&v6 range:currentPayloadOffset + 4, 4];
  return 4 * v6 + 8;
}

- (BOOL)getNextCommandData:(char *)a3 length:(unsigned int)a4 offset:(unsigned int *)a5
{
  v9 = self->_currentPayloadOffset + a4;
  v10 = [(NSMutableData *)self->_payload length];
  if (v10 >= v9)
  {
    *a5 = self->_currentPayloadOffset;
    [(NSMutableData *)self->_payload getBytes:a3 range:?];
    self->_currentPayloadOffset += a4;
  }

  return v10 >= v9;
}

@end