@interface HMDBackingStoreLogRecord
- (HMDBackingStoreLogRecord)initWithArray:(id)a3;
- (id)description;
@end

@implementation HMDBackingStoreLogRecord

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDBackingStoreLogRecord *)self rowID];
  v5 = [(HMDBackingStoreLogRecord *)self xactID];
  v6 = [(HMDBackingStoreLogRecord *)self type];
  v7 = [(HMDBackingStoreLogRecord *)self encoding];
  v8 = [(HMDBackingStoreLogRecord *)self pushed];
  v9 = [(HMDBackingStoreLogRecord *)self data];
  v10 = [v9 length];
  v11 = [(HMDBackingStoreLogRecord *)self root];
  v12 = [v3 stringWithFormat:@"<HMDBackingStoreLogRecord id: %lld, xact_id: %lld, type: %lld, encoding: %lld, pushed: 0x%llx, size: %llu, root: %@>", v4, v5, v6, v7, v8, v10, v11];

  return v12;
}

- (HMDBackingStoreLogRecord)initWithArray:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = HMDBackingStoreLogRecord;
  v5 = [(HMDBackingStoreLogRecord *)&v36 init];
  if (v5)
  {
    v6 = [v4 objectAtIndexedSubscript:0];
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

    v9 = [v8 integerValue];
    v5->_rowID = v9;
    v10 = [v4 objectAtIndexedSubscript:1];
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

    v13 = [v12 integerValue];
    v5->_xactID = v13;
    v14 = [v4 objectAtIndexedSubscript:2];
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

    v17 = [v16 integerValue];
    v5->_pushed = v17;
    v18 = [v4 objectAtIndexedSubscript:3];
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

    v22 = [v4 objectAtIndexedSubscript:4];
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

    v25 = [v24 integerValue];
    v5->_type = v25;
    v26 = [v4 objectAtIndexedSubscript:5];
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

    v29 = [v28 integerValue];
    v5->_encoding = v29;
    v30 = [v4 objectAtIndexedSubscript:6];
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