@interface VCPEspressoV2Data
- (VCPEspressoV2Data)initWithTensorType:(unint64_t)type size:(unint64_t)size;
- (VCPEspressoV2Data)initWithTensorType:(unint64_t)type size:(unint64_t)size dataPtr:(void *)ptr;
- (void)copyDataFrom:(void *)from srcStart:(unint64_t)start dstStart:(unint64_t)dstStart length:(unint64_t)length;
- (void)dealloc;
- (void)getData:(unint64_t)data;
- (void)setData:(id)data padding:(id)padding;
- (void)setValue:(id)value atIndex:(unint64_t)index;
- (void)setValueFP:(float)_S0 atIndex:(unint64_t)index;
@end

@implementation VCPEspressoV2Data

- (VCPEspressoV2Data)initWithTensorType:(unint64_t)type size:(unint64_t)size dataPtr:(void *)ptr
{
  selfCopy = self;
  v15 = *MEMORY[0x1E69E9840];
  if (type >= 3)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported Tensor type %lu", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = VCPEspressoV2Data;
    v9 = [(VCPEspressoV2Data *)&v12 init];
    if (v9)
    {
      v9->_tensorType = type;
      v9->_tensorSize = size;
      v9->_dataPtr = ptr;
      selfCopy = v9;
      v9->_allocated = 0;
    }

    else
    {
      selfCopy = 0;
    }
  }

  v10 = v9;

  return v10;
}

- (VCPEspressoV2Data)initWithTensorType:(unint64_t)type size:(unint64_t)size
{
  selfCopy = self;
  v16 = *MEMORY[0x1E69E9840];
  if (type >= 3)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported Tensor type %lu", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v13.receiver = self;
  v13.super_class = VCPEspressoV2Data;
  v7 = [(VCPEspressoV2Data *)&v13 init];
  selfCopy = v7;
  if (!v7)
  {
LABEL_10:
    v9 = 0;
    goto LABEL_17;
  }

  v7->_tensorType = type;
  v7->_tensorSize = size;
  v7->_allocated = 1;
  if (type == 1)
  {
    if ((size & 0x8000000000000000) != 0)
    {
      v8 = -1;
    }

    else
    {
      v8 = 2 * size;
    }
  }

  else if (size >> 62)
  {
    v8 = -1;
  }

  else
  {
    v8 = 4 * size;
  }

  v10 = operator new[](v8, MEMORY[0x1E69E5398]);
  selfCopy->_dataPtr = v10;
  if (v10)
  {
    v9 = selfCopy;
  }

  else
  {
    v9 = 0;
  }

LABEL_17:
  v11 = v9;

  return v11;
}

- (void)dealloc
{
  if (self->_dataPtr && self->_allocated)
  {
    if (self->_tensorType <= 2uLL)
    {
      goto LABEL_8;
    }

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "unsupported tensor type with valid data pointer", buf, 2u);
    }

    if (self->_dataPtr)
    {
LABEL_8:
      MEMORY[0x1CCA95C10]();
    }

    self->_dataPtr = 0;
  }

  v3.receiver = self;
  v3.super_class = VCPEspressoV2Data;
  [(VCPEspressoV2Data *)&v3 dealloc];
}

- (void)setData:(id)data padding:(id)padding
{
  dataCopy = data;
  paddingCopy = padding;
  if (self->_tensorSize)
  {
    v7 = 0;
    do
    {
      if (v7 >= [dataCopy count])
      {
        [(VCPEspressoV2Data *)self setValue:paddingCopy atIndex:v7];
      }

      else
      {
        v8 = [dataCopy objectAtIndexedSubscript:v7];
        [(VCPEspressoV2Data *)self setValue:v8 atIndex:v7];
      }

      ++v7;
    }

    while (v7 < self->_tensorSize);
  }
}

- (void)setValue:(id)value atIndex:(unint64_t)index
{
  v27 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v7 = valueCopy;
  if (self->_tensorSize <= index)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      tensorSize = self->_tensorSize;
      v23 = 134218240;
      indexCopy = index;
      v25 = 2048;
      v26 = tensorSize;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "Setting data out of boundary (%llu - %llu)";
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 22;
LABEL_9:
      _os_log_impl(&dword_1C9B70000, v11, v13, v12, &v23, v14);
    }
  }

  else
  {
    tensorType = self->_tensorType;
    switch(tensorType)
    {
      case 2:
        dataPtr = self->_dataPtr;
        [valueCopy floatValue];
        dataPtr[index] = v22;
        goto LABEL_15;
      case 1:
        v15 = self->_dataPtr;
        [valueCopy floatValue];
        __asm { FCVT            H0, S0 }

        v15[index] = _S0;
        goto LABEL_15;
      case 0:
        v9 = self->_dataPtr;
        v9[index] = [valueCopy intValue];
        goto LABEL_15;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "Unsupported tensor type";
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 2;
      goto LABEL_9;
    }
  }

LABEL_15:
}

- (void)setValueFP:(float)_S0 atIndex:(unint64_t)index
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_tensorSize <= index)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      tensorSize = self->_tensorSize;
      v17 = 134218240;
      indexCopy = index;
      v19 = 2048;
      v20 = tensorSize;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "Setting data out of boundary (%llu - %llu)";
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 22;
LABEL_9:
      _os_log_impl(&dword_1C9B70000, v8, v10, v9, &v17, v11);
    }
  }

  else
  {
    tensorType = self->_tensorType;
    switch(tensorType)
    {
      case 2:
        *(self->_dataPtr + index) = _S0;
        break;
      case 1:
        __asm { FCVT            H0, S0 }

        *(self->_dataPtr + index) = _H0;
        break;
      case 0:
        *(self->_dataPtr + index) = _S0;
        return;
      default:
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LOWORD(v17) = 0;
          v8 = MEMORY[0x1E69E9C10];
          v9 = "Unsupported tensor type";
          v10 = OS_LOG_TYPE_ERROR;
          v11 = 2;
          goto LABEL_9;
        }

        break;
    }
  }
}

- (void)getData:(unint64_t)data
{
  v10 = *MEMORY[0x1E69E9840];
  if (data >= 3)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v8 = 134217984;
    dataCopy = data;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "Unsupported Tensor type %lu";
    v6 = 12;
    goto LABEL_10;
  }

  if (self->_tensorType == data)
  {
    return self->_dataPtr;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v8) = 0;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "tensor type mismatch!";
    v6 = 2;
LABEL_10:
    _os_log_impl(&dword_1C9B70000, v4, OS_LOG_TYPE_ERROR, v5, &v8, v6);
  }

  return 0;
}

- (void)copyDataFrom:(void *)from srcStart:(unint64_t)start dstStart:(unint64_t)dstStart length:(unint64_t)length
{
  tensorType = self->_tensorType;
  if (tensorType != 2)
  {
    if (tensorType == 1)
    {
      memcpy(self->_dataPtr + 2 * dstStart, from + 2 * start, 2 * length);
      return;
    }

    if (tensorType)
    {
      return;
    }
  }

  memcpy(self->_dataPtr + 4 * dstStart, from + 4 * start, 4 * length);
}

@end