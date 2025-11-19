@interface NTKFaceSnapshotServiceTaskResult
+ (id)rootTaskNamed:(id)a3;
- (BOOL)_lock_finishWithError:(id *)a3;
- (BOOL)_lock_isEqualToFaceSnapshotServiceTaskResult:(id)a3;
- (BOOL)finishWithError:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFaceSnapshotServiceTaskResult:(id)a3;
- (NTKFaceSnapshotServiceTaskResult)initWithCoder:(id)a3;
- (NTKFaceSnapshotServiceTaskResult)initWithName:(id)a3 startDate:(id)a4;
- (id)_lock_childTaskNamed:(id)a3 error:(id *)a4;
- (id)_lock_copyWithZone:(_NSZone *)a3;
- (id)_prettyDescriptionWithPrefix:(id)a3;
- (id)childTaskNamed:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKFaceSnapshotServiceTaskResult

+ (id)rootTaskNamed:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  v7 = [[a1 alloc] initWithName:v5 startDate:v6];

  return v7;
}

- (NTKFaceSnapshotServiceTaskResult)initWithName:(id)a3 startDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
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
    v11 = [v6 copy];
    name = v10->_name;
    v10->_name = v11;

    v13 = [v7 copy];
    startDate = v10->_startDate;
    v10->_startDate = v13;

    subTaskResults = v10->_subTaskResults;
    v10->_subTaskResults = MEMORY[0x277CBEBF8];
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = v4 && (v5 = objc_opt_class(), [v5 isEqual:objc_opt_class()]) && -[NTKFaceSnapshotServiceTaskResult isEqualToFaceSnapshotServiceTaskResult:](self, "isEqualToFaceSnapshotServiceTaskResult:", v4);

  return v6;
}

- (id)childTaskNamed:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NTKFaceSnapshotServiceTaskResult *)self _lock_childTaskNamed:v6 error:a4];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (BOOL)finishWithError:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  LOBYTE(a3) = [(NTKFaceSnapshotServiceTaskResult *)self _lock_finishWithError:a3];
  os_unfair_lock_unlock(&self->_lock);
  return a3;
}

- (id)_lock_childTaskNamed:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v7 = [MEMORY[0x277CBEAA8] date];
  if (v6)
  {
    v8 = [[NTKFaceSnapshotServiceTaskResult alloc] initWithName:v6 startDate:v7];
    v9 = [(NSArray *)self->_subTaskResults mutableCopy];
    [v9 addObject:v8];
    [(NTKFaceSnapshotServiceTaskResult *)self setSubTaskResults:v9];
LABEL_5:

    goto LABEL_6;
  }

  if (a4)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"FaceSnapshotServiceMetricsErrorDomain" code:111 userInfo:0];
    v8 = 0;
    *a4 = v9;
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (BOOL)_lock_finishWithError:(id *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(NTKFaceSnapshotServiceTaskResult *)self endDate];
  if (v5)
  {
    if (a3)
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"FaceSnapshotServiceMetricsErrorDomain" code:800 userInfo:0];
      *a3 = v6;
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
        v14 = [v13 endDate];

        if (!v14)
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

      if (a3)
      {
        v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"FaceSnapshotServiceMetricsErrorDomain" code:810 userInfo:0];
        v7 = 0;
        *a3 = v16;
        goto LABEL_18;
      }

      v7 = 0;
    }

    else
    {
LABEL_13:

LABEL_17:
      v16 = [MEMORY[0x277CBEAA8] date];
      [(NTKFaceSnapshotServiceTaskResult *)self setEndDate:v16];
      v15 = 0;
      v7 = 1;
LABEL_18:
    }
  }

  return v7;
}

- (id)_prettyDescriptionWithPrefix:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NTKFaceSnapshotServiceTaskResult *)self name];
  v6 = [(NTKFaceSnapshotServiceTaskResult *)self startDate];
  v7 = [(NTKFaceSnapshotServiceTaskResult *)self endDate];
  v8 = [(NTKFaceSnapshotServiceTaskResult *)self endDate];

  v25 = v6;
  v26 = v5;
  v24 = v7;
  if (v8)
  {
    [v7 timeIntervalSinceDate:v6];
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ Task %@: Start: %@, Finished: %@, Length: %.03f", v4, v5, v6, v7, v9];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ Task %@: Start: %@ (Running)", v4, v5, v6, v21, v22];
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
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"    %@", v4];
        v18 = [v16 _prettyDescriptionWithPrefix:v17];

        [v10 addObject:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  v19 = [v10 componentsJoinedByString:@"\n"];

  return v19;
}

- (BOOL)isEqualToFaceSnapshotServiceTaskResult:(id)a3
{
  v4 = [a3 copy];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NTKFaceSnapshotServiceTaskResult *)self _lock_isEqualToFaceSnapshotServiceTaskResult:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (BOOL)_lock_isEqualToFaceSnapshotServiceTaskResult:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [v4 name];
  v6 = [v4 startDate];
  v7 = [v4 endDate];
  v8 = [v4 subTaskResults];

  v9 = [(NTKFaceSnapshotServiceTaskResult *)self name];
  v10 = v9;
  if (v9 == v5 || [v9 isEqual:v5])
  {
    v11 = [(NTKFaceSnapshotServiceTaskResult *)self startDate];
    v12 = v11;
    if (v11 == v6 || [v11 isEqual:v6])
    {
      v13 = [(NTKFaceSnapshotServiceTaskResult *)self endDate];
      v14 = v13;
      if (v13 == v7 || [v13 isEqual:v7])
      {
        v15 = [(NTKFaceSnapshotServiceTaskResult *)self subTaskResults];
        v16 = v15;
        if (v15 == v8)
        {
          v17 = 1;
        }

        else
        {
          v17 = [v15 isEqual:v8];
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

- (id)copyWithZone:(_NSZone *)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NTKFaceSnapshotServiceTaskResult *)self _lock_copyWithZone:a3];
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (id)_lock_copyWithZone:(_NSZone *)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(NTKFaceSnapshotServiceTaskResult *)self name];
  v6 = [(NTKFaceSnapshotServiceTaskResult *)self startDate];
  v7 = [(NTKFaceSnapshotServiceTaskResult *)self endDate];
  v8 = [(NTKFaceSnapshotServiceTaskResult *)self subTaskResults];
  v9 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithName:startDate:", v5, v6}];
  [v9 setSubTaskResults:v8];
  [v9 setEndDate:v7];

  return v9;
}

- (NTKFaceSnapshotServiceTaskResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_name);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_startDate);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_endDate);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = MEMORY[0x277CBEB98];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  v17 = NSStringFromSelector(sel_subTaskResults);
  v18 = [v4 decodeObjectOfClasses:v16 forKey:v17];

  v19 = [(NTKFaceSnapshotServiceTaskResult *)self initWithName:v7 startDate:v10];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_endDate, v13);
    objc_storeStrong(&v20->_subTaskResults, v18);
  }

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  subTaskResults = self->_subTaskResults;
  v5 = a3;
  v6 = [(NSArray *)subTaskResults copy];
  v7 = NSStringFromSelector(sel_subTaskResults);
  [v5 encodeObject:v6 forKey:v7];

  v8 = [(NSDate *)self->_startDate copy];
  v9 = NSStringFromSelector(sel_startDate);
  [v5 encodeObject:v8 forKey:v9];

  v10 = [(NSDate *)self->_endDate copy];
  v11 = NSStringFromSelector(sel_endDate);
  [v5 encodeObject:v10 forKey:v11];

  v13 = [(NSString *)self->_name copy];
  v12 = NSStringFromSelector(sel_name);
  [v5 encodeObject:v13 forKey:v12];
}

@end