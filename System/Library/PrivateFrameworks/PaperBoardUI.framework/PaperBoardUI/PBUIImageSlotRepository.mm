@interface PBUIImageSlotRepository
- (BOOL)hasSlotForIdentifier:(id)identifier;
- (CGSize)sizeForIdentifier:(id)identifier;
- (PBUIImageSlotRepository)initWithWindowScene:(id)scene;
- (id)ioSurfaceForIdentifier:(id)identifier;
- (id)urlForIdentifier:(id)identifier;
- (int64_t)actualStyleForIdentifier:(id)identifier;
- (void)allocateImageSlotForIdentifier:(id)identifier size:(CGSize)size actualStyle:(int64_t)style url:(id)url lifetimeObject:(id)object;
- (void)freeImageSlotWithIdentifier:(id)identifier lifetime:(id)lifetime;
- (void)setImageSlot:(id)slot forIdentifier:(id)identifier;
@end

@implementation PBUIImageSlotRepository

- (PBUIImageSlotRepository)initWithWindowScene:(id)scene
{
  v9.receiver = self;
  v9.super_class = PBUIImageSlotRepository;
  v3 = [(PBUIImageSlotRepository *)&v9 init];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    lifetimes = v3->_lifetimes;
    v3->_lifetimes = v4;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    slots = v3->_slots;
    v3->_slots = dictionary;
  }

  return v3;
}

- (void)allocateImageSlotForIdentifier:(id)identifier size:(CGSize)size actualStyle:(int64_t)style url:(id)url lifetimeObject:(id)object
{
  height = size.height;
  width = size.width;
  lifetimes = self->_lifetimes;
  urlCopy = url;
  identifierCopy = identifier;
  [(NSMutableSet *)lifetimes addObject:object];
  v16 = objc_alloc_init(_PBUIImageSlotRepositoryEntry);
  [(_PBUIImageSlotRepositoryEntry *)v16 setUrl:urlCopy];

  [(_PBUIImageSlotRepositoryEntry *)v16 setSize:width, height];
  [(_PBUIImageSlotRepositoryEntry *)v16 setActualStyle:style];
  [(NSMutableDictionary *)self->_slots setObject:v16 forKey:identifierCopy];
}

- (void)freeImageSlotWithIdentifier:(id)identifier lifetime:(id)lifetime
{
  identifierCopy = identifier;
  lifetimeCopy = lifetime;
  v7 = [(NSMutableDictionary *)self->_slots objectForKeyedSubscript:identifierCopy];
  if (v7)
  {
    [(NSMutableDictionary *)self->_slots removeObjectForKey:identifierCopy];
  }

  [(NSMutableSet *)self->_lifetimes removeObject:lifetimeCopy];
}

- (void)setImageSlot:(id)slot forIdentifier:(id)identifier
{
  slots = self->_slots;
  slotCopy = slot;
  v7 = [(NSMutableDictionary *)slots objectForKeyedSubscript:identifier];
  [v7 setImage:slotCopy];
}

- (BOOL)hasSlotForIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_slots objectForKey:identifier];
  v4 = v3 != 0;

  return v4;
}

- (id)urlForIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_slots objectForKeyedSubscript:identifier];
  v4 = [v3 url];

  return v4;
}

- (CGSize)sizeForIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_slots objectForKeyedSubscript:identifier];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (int64_t)actualStyleForIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_slots objectForKeyedSubscript:identifier];
  actualStyle = [v3 actualStyle];

  return actualStyle;
}

- (id)ioSurfaceForIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_slots objectForKeyedSubscript:identifier];
  ioSurface = [v3 ioSurface];

  return ioSurface;
}

@end