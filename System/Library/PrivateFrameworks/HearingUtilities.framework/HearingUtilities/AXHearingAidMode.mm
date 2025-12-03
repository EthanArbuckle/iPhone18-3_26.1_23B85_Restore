@interface AXHearingAidMode
- (AXHearingAidMode)initWithCoder:(id)coder;
- (AXHearingAidMode)initWithRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (BOOL)isStreamOrMixingStream;
- (id)description;
- (id)transportRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXHearingAidMode

- (AXHearingAidMode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = AXHearingAidMode;
  v5 = [(AXHearingAidMode *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(AXHearingAidMode *)v5 setName:v6];

    v5->_category = [coderCopy decodeIntegerForKey:@"category"];
    v5->_index = [coderCopy decodeIntForKey:@"index"];
    v5->_isSelected = [coderCopy decodeBoolForKey:@"isSelected"];
    v5->_ear = [coderCopy decodeIntForKey:@"ear"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeInteger:self->_category forKey:@"category"];
  [coderCopy encodeInt:self->_index forKey:@"index"];
  [coderCopy encodeBool:self->_isSelected forKey:@"isSelected"];
  [coderCopy encodeInt:self->_ear forKey:@"ear"];
}

- (AXHearingAidMode)initWithRepresentation:(id)representation
{
  representationCopy = representation;
  v12.receiver = self;
  v12.super_class = AXHearingAidMode;
  v5 = [(AXHearingAidMode *)&v12 init];
  if (v5)
  {
    v6 = [representationCopy valueForKey:@"name"];
    [(AXHearingAidMode *)v5 setName:v6];

    v7 = [representationCopy valueForKey:@"category"];
    v5->_category = [v7 integerValue];

    v8 = [representationCopy valueForKey:@"index"];
    v5->_index = [v8 intValue];

    v9 = [representationCopy valueForKey:@"isSelected"];
    v5->_isSelected = [v9 BOOLValue];

    v10 = [representationCopy valueForKey:@"ear"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = [equalCopy name];
    name2 = [(AXHearingAidMode *)self name];
    if ([name isEqualToString:name2] && (v7 = objc_msgSend(equalCopy, "category"), v7 == -[AXHearingAidMode category](self, "category")))
    {
      index = [equalCopy index];
      v9 = index == [(AXHearingAidMode *)self index];
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
  name = [(AXHearingAidMode *)self name];
  if ([(AXHearingAidMode *)self isSelected])
  {
    v6 = @"selected";
  }

  else
  {
    v6 = @"not selected";
  }

  v7 = [v3 stringWithFormat:@"%@ - %@ (%@) - %d: Category: %ld Ear: %d", v4, name, v6, -[AXHearingAidMode index](self, "index"), -[AXHearingAidMode category](self, "category"), -[AXHearingAidMode ear](self, "ear")];

  return v7;
}

@end