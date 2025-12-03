@interface MFUUDecoderFilter
- (int64_t)appendData:(id)data;
- (void)done;
@end

@implementation MFUUDecoderFilter

- (int64_t)appendData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (dataCopy)
  {
    _createDispatchData = [dataCopy _createDispatchData];
    data = self->_data;
    if (data)
    {
      concat = dispatch_data_create_concat(data, _createDispatchData);
    }

    else
    {
      concat = _createDispatchData;
    }

    v10 = self->_data;
    self->_data = concat;

    v9 = [v5 length];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)done
{
  v3 = self->_data;
  mf_decodeUuencoded = [(OS_dispatch_data *)v3 mf_decodeUuencoded];
  v6.receiver = self;
  v6.super_class = MFUUDecoderFilter;
  [(MFBaseFilterDataConsumer *)&v6 appendData:mf_decodeUuencoded];
  v5.receiver = self;
  v5.super_class = MFUUDecoderFilter;
  [(MFBaseFilterDataConsumer *)&v5 done];
}

@end