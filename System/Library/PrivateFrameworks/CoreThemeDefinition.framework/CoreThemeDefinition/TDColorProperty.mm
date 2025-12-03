@interface TDColorProperty
- (float)alpha;
- (float)blue;
- (float)green;
- (float)red;
- (void)addToDictionary:(id)dictionary;
- (void)dealloc;
- (void)setAlpha:(float)alpha;
- (void)setBlue:(float)blue;
- (void)setGreen:(float)green;
- (void)setRed:(float)red;
@end

@implementation TDColorProperty

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TDColorProperty;
  [(TDProperty *)&v2 dealloc];
}

- (float)red
{
  [(TDColorProperty *)self willAccessValueForKey:@"red"];
  red = self->_red;
  [(TDColorProperty *)self didAccessValueForKey:@"red"];
  return red;
}

- (void)setRed:(float)red
{
  [(TDColorProperty *)self willChangeValueForKey:@"red"];
  self->_red = red;

  [(TDColorProperty *)self didChangeValueForKey:@"red"];
}

- (float)green
{
  [(TDColorProperty *)self willAccessValueForKey:@"green"];
  green = self->_green;
  [(TDColorProperty *)self didAccessValueForKey:@"green"];
  return green;
}

- (void)setGreen:(float)green
{
  [(TDColorProperty *)self willChangeValueForKey:@"green"];
  self->_green = green;

  [(TDColorProperty *)self didChangeValueForKey:@"green"];
}

- (float)blue
{
  [(TDColorProperty *)self willAccessValueForKey:@"blue"];
  blue = self->_blue;
  [(TDColorProperty *)self didAccessValueForKey:@"blue"];
  return blue;
}

- (void)setBlue:(float)blue
{
  [(TDColorProperty *)self willChangeValueForKey:@"blue"];
  self->_blue = blue;

  [(TDColorProperty *)self didChangeValueForKey:@"blue"];
}

- (float)alpha
{
  [(TDColorProperty *)self willAccessValueForKey:@"alpha"];
  alpha = self->_alpha;
  [(TDColorProperty *)self didAccessValueForKey:@"alpha"];
  return alpha;
}

- (void)setAlpha:(float)alpha
{
  [(TDColorProperty *)self willChangeValueForKey:@"alpha"];
  self->_alpha = alpha;

  [(TDColorProperty *)self didChangeValueForKey:@"alpha"];
}

- (void)addToDictionary:(id)dictionary
{
  components[4] = *MEMORY[0x277D85DE8];
  [(TDColorProperty *)self red];
  components[0] = v5;
  [(TDColorProperty *)self green];
  components[1] = v6;
  [(TDColorProperty *)self blue];
  components[2] = v7;
  [(TDColorProperty *)self alpha];
  components[3] = v8;
  v9 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  v10 = CGColorCreate(v9, components);
  CGColorSpaceRelease(v9);
  [dictionary setObject:v10 forKey:{-[TDProperty name](self, "name")}];
  CGColorRelease(v10);
  v11 = *MEMORY[0x277D85DE8];
}

@end