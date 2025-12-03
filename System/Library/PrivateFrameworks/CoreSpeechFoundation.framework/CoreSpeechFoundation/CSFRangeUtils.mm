@interface CSFRangeUtils
- (BOOL)hasIntersectionWithRange:(id)range;
- (CSFRangeUtils)initWithStartPoint:(unint64_t)point endPoint:(unint64_t)endPoint;
@end

@implementation CSFRangeUtils

- (BOOL)hasIntersectionWithRange:(id)range
{
  v15 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  v5 = rangeCopy;
  if (!rangeCopy)
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[CSFRangeUtils hasIntersectionWithRange:]";
      _os_log_error_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_ERROR, "%s Invalid input range", &v13, 0xCu);
    }

    goto LABEL_11;
  }

  startPoint = [rangeCopy startPoint];
  endPoint = [v5 endPoint];
  startPoint = self->_startPoint;
  if ((endPoint < startPoint || endPoint >= self->_endPoint) && (startPoint < startPoint || startPoint >= self->_endPoint) && (startPoint > startPoint || endPoint < self->_endPoint))
  {
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v9 = 1;
LABEL_12:

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (CSFRangeUtils)initWithStartPoint:(unint64_t)point endPoint:(unint64_t)endPoint
{
  selfCopy = self;
  v19 = *MEMORY[0x1E69E9840];
  if (endPoint >= point)
  {
    v12.receiver = self;
    v12.super_class = CSFRangeUtils;
    v9 = [(CSFRangeUtils *)&v12 init];
    if (v9)
    {
      v9->_startPoint = point;
      v9->_endPoint = endPoint;
    }

    selfCopy = v9;
    v8 = selfCopy;
  }

  else
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "[CSFRangeUtils initWithStartPoint:endPoint:]";
      v15 = 2050;
      pointCopy = point;
      v17 = 2050;
      endPointCopy = endPoint;
      _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s Invalid input : startPoint = %{public}llu, endPoint = %{public}llu", buf, 0x20u);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

@end