@interface MontrealLogIndent
+ (id)indentWithLevel:(id)a3;
+ (id)indentWithLevel:(id)a3 step:(id)a4 factor:(unint64_t)a5;
- (MontrealLogIndent)initWithLevel:(id)a3 step:(id)a4 factor:(unint64_t)a5;
- (id)indentByFactor:(unint64_t)a3;
@end

@implementation MontrealLogIndent

+ (id)indentWithLevel:(id)a3
{
  v3 = a3;
  v4 = [MontrealLogIndent alloc];
  v6 = objc_msgSend_initWithLevel_step_factor_(v4, v5, v3, v3, 0);

  return v6;
}

+ (id)indentWithLevel:(id)a3 step:(id)a4 factor:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [MontrealLogIndent alloc];
  v11 = objc_msgSend_initWithLevel_step_factor_(v9, v10, v8, v7, a5);

  return v11;
}

- (MontrealLogIndent)initWithLevel:(id)a3 step:(id)a4 factor:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v28.receiver = self;
  v28.super_class = MontrealLogIndent;
  v13 = [(MontrealLogIndent *)&v28 init];
  if (v13)
  {
    if (objc_msgSend_length(v8, v10, v11, v12))
    {
      v17 = objc_msgSend_copy(v8, v14, v15, v16);
    }

    else
    {
      v17 = objc_msgSend_copy(@"    ", v14, v15, v16);
    }

    level = v13->_level;
    v13->_level = v17;

    if (objc_msgSend_length(v9, v19, v20, v21))
    {
      v25 = objc_msgSend_copy(v9, v22, v23, v24);
    }

    else
    {
      v25 = objc_msgSend_copy(@"    ", v22, v23, v24);
    }

    step = v13->_step;
    v13->_step = v25;

    v13->_factor = a5;
  }

  return v13;
}

- (id)indentByFactor:(unint64_t)a3
{
  v5 = objc_alloc(MEMORY[0x1E696AD60]);
  v6 = self->_factor + a3;
  v10 = objc_msgSend_length(self->_step, v7, v8, v9);
  v13 = objc_msgSend_initWithCapacity_(v5, v11, v10 * v6, v12);
  objc_msgSend_appendString_(v13, v14, self->_level, v15);
  if (a3)
  {
    v18 = a3;
    do
    {
      objc_msgSend_appendString_(v13, v16, self->_step, v17);
      --v18;
    }

    while (v18);
  }

  v19 = objc_msgSend_indentWithLevel_step_factor_(MontrealLogIndent, v16, v13, self->_step, self->_factor + a3);

  return v19;
}

@end