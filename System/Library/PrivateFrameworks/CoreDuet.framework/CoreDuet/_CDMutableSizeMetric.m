@interface _CDMutableSizeMetric
- (_CDMutableSizeMetric)initWithName:(id)a3 string:(id)a4 scale:(unint64_t)a5 family:(id)a6;
- (id)description;
- (void)addBytes:(uint64_t)a1;
@end

@implementation _CDMutableSizeMetric

- (_CDMutableSizeMetric)initWithName:(id)a3 string:(id)a4 scale:(unint64_t)a5 family:(id)a6
{
  v7.receiver = self;
  v7.super_class = _CDMutableSizeMetric;
  return [(_CDSizeMetric *)&v7 initWithName:a3 string:a4 scale:a5 family:a6];
}

- (void)addBytes:(uint64_t)a1
{
  if (!a1)
  {
    return;
  }

  obj = [MEMORY[0x1E695DF00] date];
  os_unfair_lock_lock((a1 + 8));
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *(a1 + 24) = v5 + 1;
  v6 = a2 / v4;
  objc_storeStrong((a1 + 80), obj);
  *(a1 + 40) = v6;
  *(a1 + 64) += v6;
  if (!v5)
  {
    objc_storeStrong((a1 + 72), obj);
    *(a1 + 32) = v6;
    *(a1 + 48) = v6;
    v7 = (a1 + 56);
LABEL_7:
    *v7 = v6;
    goto LABEL_8;
  }

  v7 = (a1 + 48);
  if (v6 < *(a1 + 48))
  {
    goto LABEL_7;
  }

  v7 = (a1 + 56);
  if (v6 > *(a1 + 56))
  {
    goto LABEL_7;
  }

LABEL_8:
  os_unfair_lock_unlock((a1 + 8));
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
  v8 = [(_CDSizeMetric *)self firstUpdate];
  [(_CDSizeMetric *)self firstSize];
  v9 = [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  v10 = [(_CDSizeMetric *)self lastUpdate];
  [(_CDSizeMetric *)self lastSize];
  v11 = [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  [(_CDSizeMetric *)self minimumSize];
  v12 = [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-[_CDSizeMetric maximumSize](self)];
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:-[_CDSizeMetric averageSize](self)];
  v19 = [v18 stringWithFormat:@"%@: { name=%@, text='%@', count=%@, firstUpdate=%@, firstSize=%@, lastUpdate=%@, lastSize=%@, minimumSize=%@, maximumSize=%@, averageSize=%@ }", v20, v5, v17, v16, v8, v9, v10, v11, v12, v13, v14];

  return v19;
}

@end