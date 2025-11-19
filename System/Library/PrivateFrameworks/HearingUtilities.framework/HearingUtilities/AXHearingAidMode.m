@interface AXHearingAidMode
- (AXHearingAidMode)initWithCoder:(id)a3;
- (AXHearingAidMode)initWithRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isStreamOrMixingStream;
- (id)description;
- (id)transportRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXHearingAidMode

- (AXHearingAidMode)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AXHearingAidMode;
  v5 = [(AXHearingAidMode *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(AXHearingAidMode *)v5 setName:v6];

    v5->_category = [v4 decodeIntegerForKey:@"category"];
    v5->_index = [v4 decodeIntForKey:@"index"];
    v5->_isSelected = [v4 decodeBoolForKey:@"isSelected"];
    v5->_ear = [v4 decodeIntForKey:@"ear"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeInteger:self->_category forKey:@"category"];
  [v5 encodeInt:self->_index forKey:@"index"];
  [v5 encodeBool:self->_isSelected forKey:@"isSelected"];
  [v5 encodeInt:self->_ear forKey:@"ear"];
}

- (AXHearingAidMode)initWithRepresentation:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AXHearingAidMode;
  v5 = [(AXHearingAidMode *)&v12 init];
  if (v5)
  {
    v6 = [v4 valueForKey:@"name"];
    [(AXHearingAidMode *)v5 setName:v6];

    v7 = [v4 valueForKey:@"category"];
    v5->_category = [v7 integerValue];

    v8 = [v4 valueForKey:@"index"];
    v5->_index = [v8 intValue];

    v9 = [v4 valueForKey:@"isSelected"];
    v5->_isSelected = [v9 BOOLValue];

    v10 = [v4 valueForKey:@"ear"];
    v5->_ear = [v10 intValue];
  }

  return v5;
}

- (id)transportRepresentation
{
  v3 = MEMORY[0x1E695DF20];
  name = self->_name;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_category];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_index];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSelected];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ear];
  v9 = [v3 dictionaryWithObjectsAndKeys:{name, @"name", v5, @"category", v6, @"index", v7, @"isSelected", v8, @"ear", 0}];

  return v9;
}

- (void)dealloc
{
  [(AXHearingAidMode *)self setName:0];
  v3.receiver = self;
  v3.super_class = AXHearingAidMode;
  [(AXHearingAidMode *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 name];
    v6 = [(AXHearingAidMode *)self name];
    if ([v5 isEqualToString:v6] && (v7 = objc_msgSend(v4, "category"), v7 == -[AXHearingAidMode category](self, "category")))
    {
      v8 = [v4 index];
      v9 = v8 == [(AXHearingAidMode *)self index];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isStreamOrMixingStream
{
  if ([(AXHearingAidMode *)self isStream])
  {
    return 1;
  }

  return [(AXHearingAidMode *)self isMixingStream];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = AXHearingAidMode;
  v4 = [(AXHearingAidMode *)&v9 description];
  v5 = [(AXHearingAidMode *)self name];
  if ([(AXHearingAidMode *)self isSelected])
  {
    v6 = @"selected";
  }

  else
  {
    v6 = @"not selected";
  }

  v7 = [v3 stringWithFormat:@"%@ - %@ (%@) - %d: Category: %ld Ear: %d", v4, v5, v6, -[AXHearingAidMode index](self, "index"), -[AXHearingAidMode category](self, "category"), -[AXHearingAidMode ear](self, "ear")];

  return v7;
}

@end