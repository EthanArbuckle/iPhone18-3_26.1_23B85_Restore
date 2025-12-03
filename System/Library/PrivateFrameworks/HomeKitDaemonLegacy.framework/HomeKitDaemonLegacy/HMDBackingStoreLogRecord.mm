@interface HMDBackingStoreLogRecord
- (HMDBackingStoreLogRecord)initWithArray:(id)array;
- (id)description;
@end

@implementation HMDBackingStoreLogRecord

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  rowID = [(HMDBackingStoreLogRecord *)self rowID];
  xactID = [(HMDBackingStoreLogRecord *)self xactID];
  type = [(HMDBackingStoreLogRecord *)self type];
  encoding = [(HMDBackingStoreLogRecord *)self encoding];
  pushed = [(HMDBackingStoreLogRecord *)self pushed];
  data = [(HMDBackingStoreLogRecord *)self data];
  v10 = [data length];
  root = [(HMDBackingStoreLogRecord *)self root];
  v12 = [v3 stringWithFormat:@"<HMDBackingStoreLogRecord id: %lld, xact_id: %lld, type: %lld, encoding: %lld, pushed: 0x%llx, size: %llu, root: %@>", rowID, xactID, type, encoding, pushed, v10, root];

  return v12;
}

- (HMDBackingStoreLogRecord)initWithArray:(id)array
{
  arrayCopy = array;
  v36.receiver = self;
  v36.super_class = HMDBackingStoreLogRecord;
  v5 = [(HMDBackingStoreLogRecord *)&v36 init];
  if (v5)
  {
    v6 = [arrayCopy objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    integerValue = [v8 integerValue];
    v5->_rowID = integerValue;
    v10 = [arrayCopy objectAtIndexedSubscript:1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    integerValue2 = [v12 integerValue];
    v5->_xactID = integerValue2;
    v14 = [arrayCopy objectAtIndexedSubscript:2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    integerValue3 = [v16 integerValue];
    v5->_pushed = integerValue3;
    v18 = [arrayCopy objectAtIndexedSubscript:3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    data = v5->_data;
    v5->_data = v20;

    v22 = [arrayCopy objectAtIndexedSubscript:4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    integerValue4 = [v24 integerValue];
    v5->_type = integerValue4;
    v26 = [arrayCopy objectAtIndexedSubscript:5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    integerValue5 = [v28 integerValue];
    v5->_encoding = integerValue5;
    v30 = [arrayCopy objectAtIndexedSubscript:6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;

    if (v32)
    {
      v33 = [MEMORY[0x277CBC5D0] parseFromString:v32];
    }

    else
    {
      v33 = 0;
    }

    root = v5->_root;
    v5->_root = v33;
  }

  return v5;
}

@end