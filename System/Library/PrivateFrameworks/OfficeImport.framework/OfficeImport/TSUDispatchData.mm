@interface TSUDispatchData
- (OS_dispatch_data)data;
- (TSUDispatchData)initWithData:(id)a3;
- (void)append:(id)a3;
- (void)defragmentData;
@end

@implementation TSUDispatchData

- (TSUDispatchData)initWithData:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = TSUDispatchData;
    v6 = [(TSUDispatchData *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_data, a3);
      v7->_size = dispatch_data_get_size(v5);
      objc_storeStrong(&v7->_fragmentedData, a3);
      v7->_fragmentsCount = v7->_size != 0;
      v7->_maxFragmentsCount = 1000;
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)append:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    data2 = v4;
    size = dispatch_data_get_size(v4);
    v5 = data2;
    if (size)
    {
      v7 = size;
      concat = dispatch_data_create_concat(self->_fragmentedData, data2);
      fragmentedData = self->_fragmentedData;
      self->_fragmentedData = concat;

      maxFragmentsCount = self->_maxFragmentsCount;
      self->_size += v7;
      v11 = self->_fragmentsCount + 1;
      self->_fragmentsCount = v11;
      if (v11 >= maxFragmentsCount)
      {
        [(TSUDispatchData *)self defragmentData];
        v13 = self->_defragmentedData;
        data = self->_data;
        self->_data = v13;
      }

      else
      {
        data = self->_data;
        self->_data = 0;
      }

      v5 = data2;
    }
  }
}

- (void)defragmentData
{
  p_fragmentedData = &self->_fragmentedData;
  fragmentedData = self->_fragmentedData;
  if (p_fragmentedData[2])
  {
    data2 = dispatch_data_create_map(fragmentedData, 0, 0);
    objc_storeStrong(p_fragmentedData, MEMORY[0x277D85CC8]);
    self->_fragmentsCount = 0;
  }

  else
  {
    data2 = fragmentedData;
  }

  defragmentedData = self->_defragmentedData;
  if (defragmentedData)
  {
    concat = dispatch_data_create_concat(defragmentedData, data2);
  }

  else
  {
    concat = data2;
  }

  v7 = self->_defragmentedData;
  self->_defragmentedData = concat;
}

- (OS_dispatch_data)data
{
  if (!self->_data)
  {
    if (self->_alwaysDefragmentData)
    {
      [(TSUDispatchData *)self defragmentData];
      concat = self->_defragmentedData;
    }

    else
    {
      fragmentedData = self->_fragmentedData;
      defragmentedData = self->_defragmentedData;
      if (defragmentedData)
      {
        concat = dispatch_data_create_concat(defragmentedData, fragmentedData);
      }

      else
      {
        concat = fragmentedData;
      }
    }

    data = self->_data;
    self->_data = concat;
  }

  v7 = self->_data;

  return v7;
}

@end