@interface COAlarmReadResponse
- (COAlarmReadResponse)init;
- (COAlarmReadResponse)initWithAlarms:(id)a3;
- (COAlarmReadResponse)initWithAlarms:(id)a3 deletes:(id)a4;
- (COAlarmReadResponse)initWithCoder:(id)a3;
- (COAlarmReadResponse)initWithFilteredAlarms:(id)a3;
- (COAlarmReadResponse)initWithSkipInMerge;
- (id)initNotModifiedWithDeletes:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COAlarmReadResponse

- (COAlarmReadResponse)init
{
  v6.receiver = self;
  v6.super_class = COAlarmReadResponse;
  v2 = [(COMeshCommand *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
    alarms = v2->_alarms;
    v2->_alarms = v3;
  }

  return v2;
}

- (COAlarmReadResponse)initWithAlarms:(id)a3
{
  v4 = a3;
  v5 = [(COAlarmReadResponse *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    alarms = v5->_alarms;
    v5->_alarms = v6;
  }

  return v5;
}

- (COAlarmReadResponse)initWithFilteredAlarms:(id)a3
{
  result = [(COAlarmReadResponse *)self initWithAlarms:a3];
  if (result)
  {
    result->_filtered = 1;
  }

  return result;
}

- (COAlarmReadResponse)initWithAlarms:(id)a3 deletes:(id)a4
{
  v6 = a4;
  v7 = [(COAlarmReadResponse *)self initWithAlarms:a3];
  if (v7)
  {
    v8 = [v6 copy];
    deletes = v7->_deletes;
    v7->_deletes = v8;
  }

  return v7;
}

- (id)initNotModifiedWithDeletes:(id)a3
{
  result = [(COAlarmReadResponse *)self initWithAlarms:MEMORY[0x277CBEBF8] deletes:a3];
  if (result)
  {
    *(result + 18) = 1;
  }

  return result;
}

- (COAlarmReadResponse)initWithSkipInMerge
{
  v2 = [(COAlarmReadResponse *)self init];
  v3 = v2;
  if (v2)
  {
    alarms = v2->_alarms;
    v2->_alarms = MEMORY[0x277CBEBF8];

    v3->_skipInMerge = 1;
  }

  return v3;
}

- (COAlarmReadResponse)initWithCoder:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = COAlarmReadResponse;
  v5 = [(COMeshResponse *)&v28 initWithCoder:v4];
  if (v5)
  {
    v6 = v5;
    v5->_skipInMerge = [v4 containsValueForKey:@"skip"];
    v6->_notModified = [v4 containsValueForKey:@"unmodified"];
    v6->_filtered = [v4 containsValueForKey:@"filtered"];
    if ([v4 containsValueForKey:@"deletes"])
    {
      v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"deletes"];
      deletes = v6->_deletes;
      v6->_deletes = v7;
    }

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"alarms"];
    alarms = v6->_alarms;
    v6->_alarms = v12;

    v14 = v6->_alarms;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v15 = v6->_alarms;
      v16 = [(NSArray *)v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v25;
        while (2)
        {
          v19 = 0;
          do
          {
            if (*v25 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v24 + 1) + 8 * v19);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v21 = 0;
              goto LABEL_17;
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [(NSArray *)v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v21 = v6;
    }

    else
    {
      v21 = 0;
      v15 = v6;
    }

LABEL_17:
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = COAlarmReadResponse;
  [(COMeshResponse *)&v7 encodeWithCoder:v4];
  v5 = [(COAlarmReadResponse *)self alarms];
  [v4 encodeObject:v5 forKey:@"alarms"];

  if ([(COAlarmReadResponse *)self isFiltered])
  {
    [v4 encodeObject:MEMORY[0x277CBEC38] forKey:@"filtered"];
  }

  v6 = [(COAlarmReadResponse *)self deletes];
  if (v6)
  {
    [v4 encodeObject:v6 forKey:@"deletes"];
  }

  if ([(COAlarmReadResponse *)self skipInMerge])
  {
    [v4 encodeObject:MEMORY[0x277CBEC38] forKey:@"skip"];
  }

  if ([(COAlarmReadResponse *)self notModified])
  {
    [v4 encodeObject:MEMORY[0x277CBEC38] forKey:@"unmodified"];
  }
}

@end