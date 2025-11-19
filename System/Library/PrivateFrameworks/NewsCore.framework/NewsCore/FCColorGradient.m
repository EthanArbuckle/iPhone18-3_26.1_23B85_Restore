@interface FCColorGradient
+ (id)blackGradient;
+ (id)colorGradientWithColors:(id)a3 locations:(id)a4;
+ (id)colorGradientWithConfigDict:(id)a3;
+ (id)whiteGradient;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSimilarToColorGradient:(id)a3 withinPercentage:(double)a4;
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (FCColorGradient)init;
- (FCColorGradient)initWithCoder:(id)a3;
- (FCColorGradient)initWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 colors:(id)a5 locations:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCColorGradient

- (FCColorGradient)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCColorGradient init]";
    v10 = 2080;
    v11 = "FCColorGradient.m";
    v12 = 1024;
    v13 = 16;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCColorGradient init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCColorGradient)initWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 colors:(id)a5 locations:(id)a6
{
  y = a4.y;
  x = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  v32 = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a6;
  if (!v13 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "colors"];
    *buf = 136315906;
    v25 = "[FCColorGradient initWithStartPoint:endPoint:colors:locations:]";
    v26 = 2080;
    v27 = "FCColorGradient.m";
    v28 = 1024;
    v29 = 21;
    v30 = 2114;
    v31 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v14)
    {
      goto LABEL_6;
    }
  }

  else if (v14)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "locations"];
    *buf = 136315906;
    v25 = "[FCColorGradient initWithStartPoint:endPoint:colors:locations:]";
    v26 = 2080;
    v27 = "FCColorGradient.m";
    v28 = 1024;
    v29 = 22;
    v30 = 2114;
    v31 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v15 = [v13 count];
  if (v15 != [v14 count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"the number of colors and locations should match"];
    *buf = 136315906;
    v25 = "[FCColorGradient initWithStartPoint:endPoint:colors:locations:]";
    v26 = 2080;
    v27 = "FCColorGradient.m";
    v28 = 1024;
    v29 = 23;
    v30 = 2114;
    v31 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v23.receiver = self;
  v23.super_class = FCColorGradient;
  v16 = [(FCColorGradient *)&v23 init];
  if (v16)
  {
    if ([v13 count] && objc_msgSend(v14, "count") && (v17 = objc_msgSend(v13, "count"), v17 == objc_msgSend(v14, "count")))
    {
      v16->_startPoint.x = v11;
      v16->_startPoint.y = v10;
      v16->_endPoint.x = x;
      v16->_endPoint.y = y;
      objc_storeStrong(&v16->_colors, a5);
      objc_storeStrong(&v16->_locations, a6);
    }

    else
    {

      v16 = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (id)colorGradientWithColors:(id)a3 locations:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "colors"];
    *buf = 136315906;
    v14 = "+[FCColorGradient colorGradientWithColors:locations:]";
    v15 = 2080;
    v16 = "FCColorGradient.m";
    v17 = 1024;
    v18 = 45;
    v19 = 2114;
    v20 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "locations"];
    *buf = 136315906;
    v14 = "+[FCColorGradient colorGradientWithColors:locations:]";
    v15 = 2080;
    v16 = "FCColorGradient.m";
    v17 = 1024;
    v18 = 46;
    v19 = 2114;
    v20 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v8 = [[a1 alloc] initWithStartPoint:v6 endPoint:v7 colors:0.5 locations:{0.0, 0.5, 1.0}];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)colorGradientWithConfigDict:(id)a3
{
  v37 = a1;
  v54 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v3 objectForKey:@"startPoint"];
  v6 = v5;
  v7 = 0.5;
  if (v5)
  {
    v8 = [v5 objectForKeyedSubscript:@"x"];
    [v8 floatValue];
    v10 = v9;

    v11 = [v6 objectForKeyedSubscript:@"y"];
    [v11 floatValue];
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
    v10 = 0.5;
  }

  v14 = [v3 objectForKey:@"endPoint"];
  v34 = v14;
  v36 = v6;
  if (v14)
  {
    v15 = v14;
    v16 = [v14 objectForKeyedSubscript:{@"x", v14, v6, v37}];
    [v16 floatValue];
    v7 = v17;

    v18 = [v15 objectForKeyedSubscript:@"y"];
    [v18 floatValue];
    v20 = v19;
  }

  else
  {
    v20 = 1.0;
  }

  v38 = v3;
  [v3 objectForKeyedSubscript:{@"colorStops", v34}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v44 = 0u;
  v21 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v42;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v42 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v41 + 1) + 8 * i);
        v26 = [v25 objectForKeyedSubscript:@"color"];
        v27 = [FCColor colorWithHexString:v26];
        [v40 addObject:v27];

        v28 = [v25 objectForKeyedSubscript:@"location"];
        [v4 addObject:v28];
      }

      v22 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v22);
  }

  v29 = [v40 count];
  if (v29 != [v4 count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"there should be the same number of colors as locations"];
    *buf = 136315906;
    v46 = "+[FCColorGradient colorGradientWithConfigDict:]";
    v47 = 2080;
    v48 = "FCColorGradient.m";
    v49 = 1024;
    v50 = 90;
    v51 = 2114;
    v52 = v33;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v30 = [[v37 alloc] initWithStartPoint:v40 endPoint:v4 colors:v10 locations:{v13, v7, v20}];

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

+ (id)blackGradient
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = +[FCColor blackColor];
  v9[0] = v3;
  v4 = +[FCColor blackColor];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v2 colorGradientWithColors:v5 locations:&unk_1F2E6F6A8];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)whiteGradient
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = +[FCColor whiteColor];
  v9[0] = v3;
  v4 = +[FCColor whiteColor];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v2 colorGradientWithColors:v5 locations:&unk_1F2E6F6C0];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isSimilarToColorGradient:(id)a3 withinPercentage:(double)a4
{
  v6 = a3;
  v7 = v6;
  if (self == v6)
  {
    v15 = 1;
    goto LABEL_9;
  }

  if (!v6)
  {
    goto LABEL_7;
  }

  [(FCColorGradient *)self startPoint];
  v9 = v8;
  v11 = v10;
  [(FCColorGradient *)v7 startPoint];
  if (v9 != v13 || v11 != v12)
  {
    goto LABEL_7;
  }

  [(FCColorGradient *)self endPoint];
  v18 = v17;
  v20 = v19;
  [(FCColorGradient *)v7 endPoint];
  v15 = 0;
  if (v18 == v22 && v20 == v21)
  {
    v23 = [(FCColorGradient *)self colors];
    v24 = [v23 count];
    v25 = [(FCColorGradient *)v7 colors];
    v26 = [v25 count];

    if (v24 != v26)
    {
      goto LABEL_7;
    }

    v27 = [(FCColorGradient *)self locations];
    v28 = [v27 count];
    v29 = [(FCColorGradient *)v7 locations];
    v30 = [v29 count];

    if (v28 != v30)
    {
LABEL_7:
      v15 = 0;
      goto LABEL_9;
    }

    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 1;
    v31 = [(FCColorGradient *)self colors];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __61__FCColorGradient_isSimilarToColorGradient_withinPercentage___block_invoke;
    v37[3] = &unk_1E7C38818;
    v32 = v7;
    v38 = v32;
    v39 = &v41;
    v40 = a4;
    [v31 enumerateObjectsUsingBlock:v37];

    if (v42[3])
    {
      v33 = [(FCColorGradient *)self locations];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __61__FCColorGradient_isSimilarToColorGradient_withinPercentage___block_invoke_2;
      v34[3] = &unk_1E7C38840;
      v35 = v32;
      v36 = &v41;
      [v33 enumerateObjectsUsingBlock:v34];

      v15 = *(v42 + 24);
    }

    else
    {
      v15 = 0;
    }

    _Block_object_dispose(&v41, 8);
  }

LABEL_9:

  return v15 & 1;
}

void __61__FCColorGradient_isSimilarToColorGradient_withinPercentage___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 colors];
  v10 = [v9 objectAtIndex:a3];

  LOBYTE(a3) = [v8 isSimilarToColor:v10 withinPercentage:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = a3;
  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

void __61__FCColorGradient_isSimilarToColorGradient_withinPercentage___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 locations];
  v10 = [v9 objectAtIndex:a3];

  LOBYTE(a3) = [v8 isEqualToNumber:v10];
  *(*(*(a1 + 40) + 8) + 24) = a3;
  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [(FCColorGradient *)self startPoint];
    v7 = v6;
    [v5 startPoint];
    if (v7 != v8)
    {
      goto LABEL_9;
    }

    [(FCColorGradient *)self startPoint];
    v10 = v9;
    [v5 startPoint];
    if (v10 != v11)
    {
      goto LABEL_9;
    }

    [(FCColorGradient *)self endPoint];
    v13 = v12;
    [v5 endPoint];
    if (v13 == v14 && (-[FCColorGradient endPoint](self, "endPoint"), v16 = v15, [v5 endPoint], v16 == v17))
    {
      v18 = [(FCColorGradient *)self colors];
      v19 = [v5 colors];
      if ([v18 isEqualToArray:v19])
      {
        v20 = [(FCColorGradient *)self locations];
        v21 = [v5 locations];
        v22 = [v20 isEqualToArray:v21];
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
LABEL_9:
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E696AD98];
  [(FCColorGradient *)self startPoint];
  v4 = [v3 numberWithDouble:?];
  v5 = [v4 hash];
  v6 = MEMORY[0x1E696AD98];
  [(FCColorGradient *)self startPoint];
  v8 = [v6 numberWithDouble:v7];
  v9 = [v8 hash] ^ v5;
  v10 = MEMORY[0x1E696AD98];
  [(FCColorGradient *)self endPoint];
  v11 = [v10 numberWithDouble:?];
  v12 = [v11 hash];
  v13 = MEMORY[0x1E696AD98];
  [(FCColorGradient *)self endPoint];
  v15 = [v13 numberWithDouble:v14];
  v16 = v9 ^ v12 ^ [v15 hash];
  v17 = [(FCColorGradient *)self colors];
  v18 = [v17 hash];
  v19 = [(FCColorGradient *)self locations];
  v20 = v18 ^ [v19 hash];

  return v16 ^ v20;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696B098];
  v5 = a3;
  [(FCColorGradient *)self startPoint];
  v6 = [v4 nf_valueWithCGPoint:?];
  [v5 encodeObject:v6 forKey:@"startPoint"];

  v7 = MEMORY[0x1E696B098];
  [(FCColorGradient *)self endPoint];
  v8 = [v7 nf_valueWithCGPoint:?];
  [v5 encodeObject:v8 forKey:@"endPoint"];

  v9 = [(FCColorGradient *)self colors];
  [v5 encodeObject:v9 forKey:@"colors"];

  v10 = [(FCColorGradient *)self locations];
  [v5 encodeObject:v10 forKey:@"locations"];
}

- (FCColorGradient)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startPoint"];
  [v5 nf_CGPointValue];
  v7 = v6;
  v9 = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endPoint"];
  [v10 nf_CGPointValue];
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [v4 decodeObjectOfClasses:v17 forKey:@"colors"];
  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  v22 = [v4 decodeObjectOfClasses:v21 forKey:@"locations"];

  v23 = [(FCColorGradient *)self initWithStartPoint:v18 endPoint:v22 colors:v7 locations:v9, v12, v14];
  return v23;
}

- (CGPoint)startPoint
{
  x = self->_startPoint.x;
  y = self->_startPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endPoint
{
  x = self->_endPoint.x;
  y = self->_endPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end