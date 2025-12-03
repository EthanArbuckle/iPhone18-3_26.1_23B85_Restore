@interface CKContextUIElement
- (BOOL)isEqual:(id)equal;
- (CGPoint)absoluteOriginOnScreen;
- (CGRect)frameInWindow;
- (CKContextUIElement)initWithCoder:(id)coder;
- (CKContextUIElement)initWithText:(id)text className:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)toJSONSerializableDictionary;
- (int64_t)compareByPosition:(id)position;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKContextUIElement

- (CKContextUIElement)initWithText:(id)text className:(id)name
{
  textCopy = text;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = CKContextUIElement;
  v9 = [(CKContextUIElement *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_text, text);
    objc_storeStrong(&v10->_className, name);
  }

  return v10;
}

- (CKContextUIElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = CKContextUIElement;
  v5 = [(CKContextUIElement *)&v21 init];
  if (!v5)
  {
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
  if (v6)
  {
    objc_storeStrong(v5 + 3, v6);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"className"];
    v8 = *(v5 + 4);
    *(v5 + 4) = v7;

    v9 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"superviewClassNames"];
    v10 = *(v5 + 5);
    *(v5 + 5) = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sceneIdentifier"];
    v12 = *(v5 + 6);
    *(v5 + 6) = v11;

    [coderCopy decodeFloatForKey:@"fontSize"];
    *(v5 + 3) = v13;
    [coderCopy decodeFloatForKey:@"density"];
    *(v5 + 4) = v14;
    v5[8] = [coderCopy decodeBoolForKey:@"onScreen"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"frameInWindow"];
    if ([(NSString *)v15 length])
    {
      *(v5 + 72) = CGRectFromString(v15);
    }

    else
    {
      v16 = *(MEMORY[0x1E695F058] + 16);
      *(v5 + 72) = *MEMORY[0x1E695F058];
      *(v5 + 88) = v16;
    }

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"absoluteOriginOnScreen"];
    [v17 CGPointValue];
    *(v5 + 7) = v18;
    *(v5 + 8) = v19;

    goto LABEL_7;
  }

LABEL_8:

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  text = self->_text;
  coderCopy = coder;
  [coderCopy encodeObject:text forKey:@"text"];
  [coderCopy encodeObject:self->_className forKey:@"className"];
  [coderCopy encodeObject:self->_superviewClassNames forKey:@"superviewClassNames"];
  [coderCopy encodeObject:self->_sceneIdentifier forKey:@"sceneIdentifier"];
  *&v6 = self->_fontSize;
  [coderCopy encodeFloat:@"fontSize" forKey:v6];
  *&v7 = self->_density;
  [coderCopy encodeFloat:@"density" forKey:v7];
  [coderCopy encodeBool:self->_onScreen forKey:@"onScreen"];
  v8 = NSStringFromCGRect(self->_frameInWindow);
  [coderCopy encodeObject:v8 forKey:@"frameInWindow"];

  v9 = [MEMORY[0x1E696B098] valueWithCGPoint:{self->_absoluteOriginOnScreen.x, self->_absoluteOriginOnScreen.y}];
  [coderCopy encodeObject:v9 forKey:@"absoluteOriginOnScreen"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSString *)self->_text copy];
  [v4 setText:v5];

  v6 = [(NSString *)self->_className copy];
  [v4 setClassName:v6];

  v7 = [(NSArray *)self->_superviewClassNames copy];
  [v4 setSuperviewClassNames:v7];

  v8 = [(NSString *)self->_sceneIdentifier copy];
  [v4 setSceneIdentifier:v8];

  *&v9 = self->_fontSize;
  [v4 setFontSize:v9];
  *&v10 = self->_density;
  [v4 setDensity:v10];
  [v4 setFrameInWindow:{self->_frameInWindow.origin.x, self->_frameInWindow.origin.y, self->_frameInWindow.size.width, self->_frameInWindow.size.height}];
  [v4 setAbsoluteOriginOnScreen:{self->_absoluteOriginOnScreen.x, self->_absoluteOriginOnScreen.y}];
  [v4 setOnScreen:self->_onScreen];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CKContextUIElement *)self hash];
      v6 = v5 == [(CKContextUIElement *)equalCopy hash];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_text hash];
  v4 = [(NSString *)self->_className hash]- v3 + 32 * v3;
  v5 = [(NSArray *)self->_superviewClassNames hash]- v4 + 32 * v4;
  v6 = (self->_absoluteOriginOnScreen.y + (31 * (self->_absoluteOriginOnScreen.x + (31 * (self->_frameInWindow.size.height + (31 * (self->_frameInWindow.size.width + (31 * (self->_frameInWindow.origin.y + (31 * (self->_frameInWindow.origin.x + (31 * (self->_density + (31 * (self->_fontSize + (31 * ([(NSString *)self->_sceneIdentifier hash]- v5 + 32 * v5) + 28629151))))))))))))))));
  return self->_onScreen - v6 + 32 * v6;
}

- (int64_t)compareByPosition:(id)position
{
  [position frameInWindow];
  y = self->_frameInWindow.origin.y;
  if (y < v5)
  {
    return -1;
  }

  if (y > v5)
  {
    return 1;
  }

  x = self->_frameInWindow.origin.x;
  if (x < v4)
  {
    return -1;
  }

  return x > v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  fontSize = self->_fontSize;
  origin = self->_frameInWindow.origin;
  absoluteOriginOnScreen = self->_absoluteOriginOnScreen;
  width = self->_frameInWindow.size.width;
  height = self->_frameInWindow.size.height;
  if (self->_onScreen)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  className = self->_className;
  sceneIdentifier = self->_sceneIdentifier;
  v10 = [(NSArray *)self->_superviewClassNames componentsJoinedByString:@", "];
  v11 = [v3 stringWithFormat:@"Class: %@, FontSize: %.f, Origin:(%.f, %.f), AbsoluteOriginOnScreen:(%.f, %.f), Size:(%.f, %.f), SceneIdentifier: %@, On Screen:%@\nSuperViews:%@\nContent: %@\n", className, *&fontSize, origin, absoluteOriginOnScreen, *&width, *&height, sceneIdentifier, v7, v10, self->_text];

  return v11;
}

- (id)toJSONSerializableDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_text forKeyedSubscript:@"text"];
  [v3 setObject:self->_className forKeyedSubscript:@"className"];
  [v3 setObject:self->_superviewClassNames forKeyedSubscript:@"superviewClassNames"];
  [v3 setObject:self->_sceneIdentifier forKeyedSubscript:@"sceneIdentifier"];
  *&v4 = self->_fontSize;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v5 forKeyedSubscript:@"fontSize"];

  *&v6 = self->_density;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [v3 setObject:v7 forKeyedSubscript:@"density"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_frameInWindow.origin.x];
  [v3 setObject:v8 forKeyedSubscript:@"x"];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_frameInWindow.origin.y];
  [v3 setObject:v9 forKeyedSubscript:@"y"];

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteOriginOnScreen.x];
  [v3 setObject:v10 forKeyedSubscript:@"absoluteOriginX"];

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteOriginOnScreen.y];
  [v3 setObject:v11 forKeyedSubscript:@"abosluteOriginY"];

  v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_frameInWindow.size.width];
  [v3 setObject:v12 forKeyedSubscript:@"width"];

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_frameInWindow.size.height];
  [v3 setObject:v13 forKeyedSubscript:@"height"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_onScreen];
  [v3 setObject:v14 forKeyedSubscript:@"onScreen"];

  return v3;
}

- (CGRect)frameInWindow
{
  x = self->_frameInWindow.origin.x;
  y = self->_frameInWindow.origin.y;
  width = self->_frameInWindow.size.width;
  height = self->_frameInWindow.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)absoluteOriginOnScreen
{
  x = self->_absoluteOriginOnScreen.x;
  y = self->_absoluteOriginOnScreen.y;
  result.y = y;
  result.x = x;
  return result;
}

@end