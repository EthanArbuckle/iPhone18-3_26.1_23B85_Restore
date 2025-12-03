@interface _CDMutableSizeMetric
- (_CDMutableSizeMetric)initWithName:(id)name string:(id)string scale:(unint64_t)scale family:(id)family;
- (id)description;
- (void)addBytes:(uint64_t)bytes;
@end

@implementation _CDMutableSizeMetric

- (_CDMutableSizeMetric)initWithName:(id)name string:(id)string scale:(unint64_t)scale family:(id)family
{
  v7.receiver = self;
  v7.super_class = _CDMutableSizeMetric;
  return [(_CDSizeMetric *)&v7 initWithName:name string:string scale:scale family:family];
}

- (void)addBytes:(uint64_t)bytes
{
  if (!bytes)
  {
    return;
  }

  obj = [MEMORY[0x1E695DF00] date];
  os_unfair_lock_lock((bytes + 8));
  v4 = *(bytes + 16);
  v5 = *(bytes + 24);
  *(bytes + 24) = v5 + 1;
  v6 = a2 / v4;
  objc_storeStrong((bytes + 80), obj);
  *(bytes + 40) = v6;
  *(bytes + 64) += v6;
  if (!v5)
  {
    objc_storeStrong((bytes + 72), obj);
    *(bytes + 32) = v6;
    *(bytes + 48) = v6;
    v7 = (bytes + 56);
LABEL_7:
    *v7 = v6;
    goto LABEL_8;
  }

  v7 = (bytes + 48);
  if (v6 < *(bytes + 48))
  {
    goto LABEL_7;
  }

  v7 = (bytes + 56);
  if (v6 > *(bytes + 56))
  {
    goto LABEL_7;
  }

LABEL_8:
  os_unfair_lock_unlock((bytes + 8));
}

- (id)description
{
  v18 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v20 = NSStringFromClass(v3);
  if (self)
  {
    v5 = objc_getProperty(self, v4, 88, 1);
    Property = objc_getProperty(self, v6, 96, 1);
  }

  else
  {
    v5 = 0;
    Property = 0;
  }

  v17 = Property;
  [(_CDSizeMetric *)self count];
  v16 = [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  firstUpdate = [(_CDSizeMetric *)self firstUpdate];
  [(_CDSizeMetric *)self firstSize];
  v9 = [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  lastUpdate = [(_CDSizeMetric *)self lastUpdate];
  [(_CDSizeMetric *)self lastSize];
  v11 = [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  [(_CDSizeMetric *)self minimumSize];
  v12 = [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-[_CDSizeMetric maximumSize](self)];
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:-[_CDSizeMetric averageSize](self)];
  v19 = [v18 stringWithFormat:@"%@: { name=%@, text='%@', count=%@, firstUpdate=%@, firstSize=%@, lastUpdate=%@, lastSize=%@, minimumSize=%@, maximumSize=%@, averageSize=%@ }", v20, v5, v17, v16, firstUpdate, v9, lastUpdate, v11, v12, v13, v14];

  return v19;
}

@end