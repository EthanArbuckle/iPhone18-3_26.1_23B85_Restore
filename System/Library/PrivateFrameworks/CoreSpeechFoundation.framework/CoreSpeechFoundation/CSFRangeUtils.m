@interface CSFRangeUtils
- (BOOL)hasIntersectionWithRange:(id)a3;
- (CSFRangeUtils)initWithStartPoint:(unint64_t)a3 endPoint:(unint64_t)a4;
@end

@implementation CSFRangeUtils

- (BOOL)hasIntersectionWithRange:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
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

  v6 = [v4 startPoint];
  v7 = [v5 endPoint];
  startPoint = self->_startPoint;
  if ((v7 < startPoint || v7 >= self->_endPoint) && (v6 < startPoint || v6 >= self->_endPoint) && (v6 > startPoint || v7 < self->_endPoint))
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

- (CSFRangeUtils)initWithStartPoint:(unint64_t)a3 endPoint:(unint64_t)a4
{
  v6 = self;
  v19 = *MEMORY[0x1E69E9840];
  if (a4 >= a3)
  {
    v12.receiver = self;
    v12.super_class = CSFRangeUtils;
    v9 = [(CSFRangeUtils *)&v12 init];
    if (v9)
    {
      v9->_startPoint = a3;
      v9->_endPoint = a4;
    }

    v6 = v9;
    v8 = v6;
  }

  else
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "[CSFRangeUtils initWithStartPoint:endPoint:]";
      v15 = 2050;
      v16 = a3;
      v17 = 2050;
      v18 = a4;
      _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s Invalid input : startPoint = %{public}llu, endPoint = %{public}llu", buf, 0x20u);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

@end