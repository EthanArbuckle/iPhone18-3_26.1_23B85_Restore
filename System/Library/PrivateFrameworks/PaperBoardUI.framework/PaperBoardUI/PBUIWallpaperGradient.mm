@interface PBUIWallpaperGradient
- (BOOL)isEqual:(id)a3;
- (CGGradient)copyCGGradient;
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (PBUIWallpaperGradient)init;
- (PBUIWallpaperGradient)initWithCoder:(id)a3;
- (id)cgColors;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)configureLayer:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PBUIWallpaperGradient

- (PBUIWallpaperGradient)init
{
  v7.receiver = self;
  v7.super_class = PBUIWallpaperGradient;
  v2 = [(PBUIWallpaperGradient *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_startPoint = xmmword_21E70D680;
    v2->_endPoint = xmmword_21E70D690;
    v4 = [*MEMORY[0x277CDA690] copy];
    type = v3->_type;
    v3->_type = v4;
  }

  return v3;
}

- (id)cgColors
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(PBUIWallpaperGradient *)self colors];
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x277CBECE8];
    v6 = [v3 count];
    Mutable = CFArrayCreateMutable(v5, v6, MEMORY[0x277CBF128]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [(PBUIWallpaperGradient *)self colors];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          CFArrayAppendValue(Mutable, [*(*(&v14 + 1) + 8 * i) CGColor]);
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  else
  {
    Mutable = 0;
  }

  return Mutable;
}

- (void)configureLayer:(id)a3
{
  v4 = a3;
  v5 = [(PBUIWallpaperGradient *)self cgColors];
  [v4 setColors:v5];

  v6 = [(PBUIWallpaperGradient *)self locations];
  [v4 setLocations:v6];

  [(PBUIWallpaperGradient *)self startPoint];
  [v4 setStartPoint:?];
  [(PBUIWallpaperGradient *)self endPoint];
  [v4 setEndPoint:?];
  v7 = [(PBUIWallpaperGradient *)self type];
  [v4 setType:v7];
}

- (CGGradient)copyCGGradient
{
  v3 = [(PBUIWallpaperGradient *)self locations];
  v4 = [v3 count];
  if (v4)
  {
    v5 = malloc_type_calloc(v4, 8uLL, 0x100004000313F17uLL);
    v6 = v5;
    if (v5)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __39__PBUIWallpaperGradient_copyCGGradient__block_invoke;
      v10[3] = &__block_descriptor_40_e25_v32__0__NSNumber_8Q16_B24l;
      v10[4] = v5;
      [v3 enumerateObjectsUsingBlock:v10];
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PBUIWallpaperGradient *)self cgColors];
  v8 = CGGradientCreateWithColors(0, v7, v6);

  free(v6);
  return v8;
}

uint64_t __39__PBUIWallpaperGradient_copyCGGradient__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 doubleValue];
  *(*(a1 + 32) + 8 * a3) = v6;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PBUIWallpaperGradient *)self colors];
      v9 = [(PBUIWallpaperGradient *)v7 colors];
      v10 = BSEqualObjects();

      if (v10 && ([(PBUIWallpaperGradient *)self locations], v11 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperGradient *)v7 locations], v12 = objc_claimAutoreleasedReturnValue(), v13 = BSEqualObjects(), v12, v11, v13))
      {
        [(PBUIWallpaperGradient *)self startPoint];
        v15 = v14;
        v17 = v16;
        [(PBUIWallpaperGradient *)v7 startPoint];
        v19 = 0;
        if (v15 == v20 && v17 == v18)
        {
          [(PBUIWallpaperGradient *)self endPoint];
          v22 = v21;
          v24 = v23;
          [(PBUIWallpaperGradient *)v7 endPoint];
          v19 = 0;
          if (v22 == v26 && v24 == v25)
          {
            v27 = [(PBUIWallpaperGradient *)self type];
            v28 = [(PBUIWallpaperGradient *)v7 type];
            v19 = BSEqualObjects();
          }
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (unint64_t)hash
{
  v3 = [(PBUIWallpaperGradient *)self colors];
  v4 = [v3 hash];
  v5 = [(PBUIWallpaperGradient *)self locations];
  v6 = [v5 hash] + v4;
  v7 = [(PBUIWallpaperGradient *)self type];
  v8 = [v7 hash];

  return v6 + v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(PBUIWallpaperGradient *)self colors];
  [v4 setColors:v5];

  v6 = [(PBUIWallpaperGradient *)self locations];
  [v4 setLocations:v6];

  [(PBUIWallpaperGradient *)self startPoint];
  [v4 setStartPoint:?];
  [(PBUIWallpaperGradient *)self endPoint];
  [v4 setEndPoint:?];
  v7 = [(PBUIWallpaperGradient *)self type];
  [v4 setType:v7];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PBUIWallpaperGradient *)self colors];
  [v4 encodeObject:v5 forKey:@"colors"];

  v6 = [(PBUIWallpaperGradient *)self locations];
  [v4 encodeObject:v6 forKey:@"locations"];

  [(PBUIWallpaperGradient *)self startPoint];
  [v4 encodeCGPoint:@"startPoint" forKey:?];
  [(PBUIWallpaperGradient *)self endPoint];
  [v4 encodeCGPoint:@"endPoint" forKey:?];
  v7 = [(PBUIWallpaperGradient *)self type];
  [v4 encodeObject:v7 forKey:@"type"];
}

- (PBUIWallpaperGradient)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = PBUIWallpaperGradient;
  v5 = [(PBUIWallpaperGradient *)&v26 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_self();
    v8 = objc_opt_self();
    v9 = [v6 setWithObjects:{v7, v8, 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"colors"];
    colors = v5->_colors;
    v5->_colors = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_self();
    v14 = objc_opt_self();
    v15 = [v12 setWithObjects:{v13, v14, 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"locations"];
    locations = v5->_locations;
    v5->_locations = v16;

    [v4 decodeCGPointForKey:@"startPoint"];
    v5->_startPoint.x = v18;
    v5->_startPoint.y = v19;
    [v4 decodeCGPointForKey:@"endPoint"];
    v5->_endPoint.x = v20;
    v5->_endPoint.y = v21;
    v22 = objc_opt_self();
    v23 = [v4 decodeObjectOfClass:v22 forKey:@"type"];
    type = v5->_type;
    v5->_type = v23;
  }

  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PBUIWallpaperGradient *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [(PBUIWallpaperGradient *)self colors];
  v6 = [v4 appendObject:v5 withName:@"colors"];

  v7 = [(PBUIWallpaperGradient *)self locations];
  v8 = [v4 appendObject:v7 withName:@"locations"];

  [(PBUIWallpaperGradient *)self startPoint];
  v9 = [v4 appendPoint:@"startPoint" withName:?];
  [(PBUIWallpaperGradient *)self endPoint];
  v10 = [v4 appendPoint:@"endPoint" withName:?];
  v11 = [(PBUIWallpaperGradient *)self type];
  v12 = [v4 appendObject:v11 withName:@"type"];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(PBUIWallpaperGradient *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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