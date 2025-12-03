@interface NTKFaceSnapshotServiceTaskResult
+ (id)rootTaskNamed:(id)named;
- (BOOL)_lock_finishWithError:(id *)error;
- (BOOL)_lock_isEqualToFaceSnapshotServiceTaskResult:(id)result;
- (BOOL)finishWithError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFaceSnapshotServiceTaskResult:(id)result;
- (NTKFaceSnapshotServiceTaskResult)initWithCoder:(id)coder;
- (NTKFaceSnapshotServiceTaskResult)initWithName:(id)name startDate:(id)date;
- (id)_lock_childTaskNamed:(id)named error:(id *)error;
- (id)_lock_copyWithZone:(_NSZone *)zone;
- (id)_prettyDescriptionWithPrefix:(id)prefix;
- (id)childTaskNamed:(id)named error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKFaceSnapshotServiceTaskResult

+ (id)rootTaskNamed:(id)named
{
  v4 = MEMORY[0x277CBEAA8];
  namedCopy = named;
  date = [v4 date];
  v7 = [[self alloc] initWithName:namedCopy startDate:date];

  return v7;
}

- (NTKFaceSnapshotServiceTaskResult)initWithName:(id)name startDate:(id)date
{
  nameCopy = name;
  dateCopy = date;
  if (!nameCopy)
  {
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:@"NilNameString" reason:@"name is nil" userInfo:0];
    [v8 raise];
  }

  v17.receiver = self;
  v17.super_class = NTKFaceSnapshotServiceTaskResult;
  v9 = [(NTKFaceSnapshotServiceTaskResult *)&v17 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v11 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v11;

    v13 = [dateCopy copy];
    startDate = v10->_startDate;
    v10->_startDate = v13;

    subTaskResults = v10->_subTaskResults;
    v10->_subTaskResults = MEMORY[0x277CBEBF8];
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy && (v5 = objc_opt_class(), [v5 isEqual:objc_opt_class()]) && -[NTKFaceSnapshotServiceTaskResult isEqualToFaceSnapshotServiceTaskResult:](self, "isEqualToFaceSnapshotServiceTaskResult:", equalCopy);

  return v6;
}

- (id)childTaskNamed:(id)named error:(id *)error
{
  namedCopy = named;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NTKFaceSnapshotServiceTaskResult *)self _lock_childTaskNamed:namedCopy error:error];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (BOOL)finishWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  LOBYTE(error) = [(NTKFaceSnapshotServiceTaskResult *)self _lock_finishWithError:error];
  os_unfair_lock_unlock(&self->_lock);
  return error;
}

- (id)_lock_childTaskNamed:(id)named error:(id *)error
{
  namedCopy = named;
  os_unfair_lock_assert_owner(&self->_lock);
  date = [MEMORY[0x277CBEAA8] date];
  if (namedCopy)
  {
    v8 = [[NTKFaceSnapshotServiceTaskResult alloc] initWithName:namedCopy startDate:date];
    v9 = [(NSArray *)self->_subTaskResults mutableCopy];
    [v9 addObject:v8];
    [(NTKFaceSnapshotServiceTaskResult *)self setSubTaskResults:v9];
LABEL_5:

    goto LABEL_6;
  }

  if (error)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"FaceSnapshotServiceMetricsErrorDomain" code:111 userInfo:0];
    v8 = 0;
    *error = v9;
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (BOOL)_lock_finishWithError:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  endDate = [(NTKFaceSnapshotServiceTaskResult *)self endDate];
  if (endDate)
  {
    if (error)
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"FaceSnapshotServiceMetricsErrorDomain" code:800 userInfo:0];
      *error = v6;
    }

    v7 = 0;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_subTaskResults;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
LABEL_7:
      v12 = 0;
      while (1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        endDate2 = [v13 endDate];

        if (!endDate2)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v10)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }

      v15 = v13;

      if (!v15)
      {
        goto LABEL_17;
      }

      if (error)
      {
        date = [MEMORY[0x277CCA9B8] errorWithDomain:@"FaceSnapshotServiceMetricsErrorDomain" code:810 userInfo:0];
        v7 = 0;
        *error = date;
        goto LABEL_18;
      }

      v7 = 0;
    }

    else
    {
LABEL_13:

LABEL_17:
      date = [MEMORY[0x277CBEAA8] date];
      [(NTKFaceSnapshotServiceTaskResult *)self setEndDate:date];
      v15 = 0;
      v7 = 1;
LABEL_18:
    }
  }

  return v7;
}

- (id)_prettyDescriptionWithPrefix:(id)prefix
{
  v32 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  name = [(NTKFaceSnapshotServiceTaskResult *)self name];
  startDate = [(NTKFaceSnapshotServiceTaskResult *)self startDate];
  endDate = [(NTKFaceSnapshotServiceTaskResult *)self endDate];
  endDate2 = [(NTKFaceSnapshotServiceTaskResult *)self endDate];

  v25 = startDate;
  v26 = name;
  v24 = endDate;
  if (endDate2)
  {
    [endDate timeIntervalSinceDate:startDate];
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ Task %@: Start: %@, Finished: %@, Length: %.03f", prefixCopy, name, startDate, endDate, v9];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ Task %@: Start: %@ (Running)", prefixCopy, name, startDate, v21, v22];
  }
  v23 = ;
  v10 = [MEMORY[0x277CBEB18] arrayWithObject:v23];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = [(NSArray *)self->_subTaskResults copy];
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        prefixCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"    %@", prefixCopy];
        v18 = [v16 _prettyDescriptionWithPrefix:prefixCopy];

        [v10 addObject:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  v19 = [v10 componentsJoinedByString:@"\n"];

  return v19;
}

- (BOOL)isEqualToFaceSnapshotServiceTaskResult:(id)result
{
  v4 = [result copy];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NTKFaceSnapshotServiceTaskResult *)self _lock_isEqualToFaceSnapshotServiceTaskResult:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (BOOL)_lock_isEqualToFaceSnapshotServiceTaskResult:(id)result
{
  resultCopy = result;
  os_unfair_lock_assert_owner(&self->_lock);
  name = [resultCopy name];
  startDate = [resultCopy startDate];
  endDate = [resultCopy endDate];
  subTaskResults = [resultCopy subTaskResults];

  name2 = [(NTKFaceSnapshotServiceTaskResult *)self name];
  v10 = name2;
  if (name2 == name || [name2 isEqual:name])
  {
    startDate2 = [(NTKFaceSnapshotServiceTaskResult *)self startDate];
    v12 = startDate2;
    if (startDate2 == startDate || [startDate2 isEqual:startDate])
    {
      endDate2 = [(NTKFaceSnapshotServiceTaskResult *)self endDate];
      v14 = endDate2;
      if (endDate2 == endDate || [endDate2 isEqual:endDate])
      {
        subTaskResults2 = [(NTKFaceSnapshotServiceTaskResult *)self subTaskResults];
        v16 = subTaskResults2;
        if (subTaskResults2 == subTaskResults)
        {
          v17 = 1;
        }

        else
        {
          v17 = [subTaskResults2 isEqual:subTaskResults];
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NTKFaceSnapshotServiceTaskResult *)self _lock_copyWithZone:zone];
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (id)_lock_copyWithZone:(_NSZone *)zone
{
  os_unfair_lock_assert_owner(&self->_lock);
  name = [(NTKFaceSnapshotServiceTaskResult *)self name];
  startDate = [(NTKFaceSnapshotServiceTaskResult *)self startDate];
  endDate = [(NTKFaceSnapshotServiceTaskResult *)self endDate];
  subTaskResults = [(NTKFaceSnapshotServiceTaskResult *)self subTaskResults];
  v9 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithName:startDate:", name, startDate}];
  [v9 setSubTaskResults:subTaskResults];
  [v9 setEndDate:endDate];

  return v9;
}

- (NTKFaceSnapshotServiceTaskResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_name);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_startDate);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_endDate);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = MEMORY[0x277CBEB98];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  v17 = NSStringFromSelector(sel_subTaskResults);
  v18 = [coderCopy decodeObjectOfClasses:v16 forKey:v17];

  v19 = [(NTKFaceSnapshotServiceTaskResult *)self initWithName:v7 startDate:v10];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_endDate, v13);
    objc_storeStrong(&v20->_subTaskResults, v18);
  }

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  subTaskResults = self->_subTaskResults;
  coderCopy = coder;
  v6 = [(NSArray *)subTaskResults copy];
  v7 = NSStringFromSelector(sel_subTaskResults);
  [coderCopy encodeObject:v6 forKey:v7];

  v8 = [(NSDate *)self->_startDate copy];
  v9 = NSStringFromSelector(sel_startDate);
  [coderCopy encodeObject:v8 forKey:v9];

  v10 = [(NSDate *)self->_endDate copy];
  v11 = NSStringFromSelector(sel_endDate);
  [coderCopy encodeObject:v10 forKey:v11];

  v13 = [(NSString *)self->_name copy];
  v12 = NSStringFromSelector(sel_name);
  [coderCopy encodeObject:v13 forKey:v12];
}

@end