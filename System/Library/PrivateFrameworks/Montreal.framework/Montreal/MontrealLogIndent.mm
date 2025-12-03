@interface MontrealLogIndent
+ (id)indentWithLevel:(id)level;
+ (id)indentWithLevel:(id)level step:(id)step factor:(unint64_t)factor;
- (MontrealLogIndent)initWithLevel:(id)level step:(id)step factor:(unint64_t)factor;
- (id)indentByFactor:(unint64_t)factor;
@end

@implementation MontrealLogIndent

+ (id)indentWithLevel:(id)level
{
  levelCopy = level;
  v4 = [MontrealLogIndent alloc];
  v6 = objc_msgSend_initWithLevel_step_factor_(v4, v5, levelCopy, levelCopy, 0);

  return v6;
}

+ (id)indentWithLevel:(id)level step:(id)step factor:(unint64_t)factor
{
  stepCopy = step;
  levelCopy = level;
  v9 = [MontrealLogIndent alloc];
  v11 = objc_msgSend_initWithLevel_step_factor_(v9, v10, levelCopy, stepCopy, factor);

  return v11;
}

- (MontrealLogIndent)initWithLevel:(id)level step:(id)step factor:(unint64_t)factor
{
  levelCopy = level;
  stepCopy = step;
  v28.receiver = self;
  v28.super_class = MontrealLogIndent;
  v13 = [(MontrealLogIndent *)&v28 init];
  if (v13)
  {
    if (objc_msgSend_length(levelCopy, v10, v11, v12))
    {
      v17 = objc_msgSend_copy(levelCopy, v14, v15, v16);
    }

    else
    {
      v17 = objc_msgSend_copy(@"    ", v14, v15, v16);
    }

    level = v13->_level;
    v13->_level = v17;

    if (objc_msgSend_length(stepCopy, v19, v20, v21))
    {
      v25 = objc_msgSend_copy(stepCopy, v22, v23, v24);
    }

    else
    {
      v25 = objc_msgSend_copy(@"    ", v22, v23, v24);
    }

    step = v13->_step;
    v13->_step = v25;

    v13->_factor = factor;
  }

  return v13;
}

- (id)indentByFactor:(unint64_t)factor
{
  v5 = objc_alloc(MEMORY[0x1E696AD60]);
  v6 = self->_factor + factor;
  v10 = objc_msgSend_length(self->_step, v7, v8, v9);
  v13 = objc_msgSend_initWithCapacity_(v5, v11, v10 * v6, v12);
  objc_msgSend_appendString_(v13, v14, self->_level, v15);
  if (factor)
  {
    factorCopy = factor;
    do
    {
      objc_msgSend_appendString_(v13, v16, self->_step, v17);
      --factorCopy;
    }

    while (factorCopy);
  }

  v19 = objc_msgSend_indentWithLevel_step_factor_(MontrealLogIndent, v16, v13, self->_step, self->_factor + factor);

  return v19;
}

@end