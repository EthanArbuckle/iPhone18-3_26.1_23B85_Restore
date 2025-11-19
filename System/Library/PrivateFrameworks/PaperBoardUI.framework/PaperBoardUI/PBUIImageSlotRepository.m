@interface PBUIImageSlotRepository
- (BOOL)hasSlotForIdentifier:(id)a3;
- (CGSize)sizeForIdentifier:(id)a3;
- (PBUIImageSlotRepository)initWithWindowScene:(id)a3;
- (id)ioSurfaceForIdentifier:(id)a3;
- (id)urlForIdentifier:(id)a3;
- (int64_t)actualStyleForIdentifier:(id)a3;
- (void)allocateImageSlotForIdentifier:(id)a3 size:(CGSize)a4 actualStyle:(int64_t)a5 url:(id)a6 lifetimeObject:(id)a7;
- (void)freeImageSlotWithIdentifier:(id)a3 lifetime:(id)a4;
- (void)setImageSlot:(id)a3 forIdentifier:(id)a4;
@end

@implementation PBUIImageSlotRepository

- (PBUIImageSlotRepository)initWithWindowScene:(id)a3
{
  v9.receiver = self;
  v9.super_class = PBUIImageSlotRepository;
  v3 = [(PBUIImageSlotRepository *)&v9 init];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    lifetimes = v3->_lifetimes;
    v3->_lifetimes = v4;

    v6 = [MEMORY[0x277CBEB38] dictionary];
    slots = v3->_slots;
    v3->_slots = v6;
  }

  return v3;
}

- (void)allocateImageSlotForIdentifier:(id)a3 size:(CGSize)a4 actualStyle:(int64_t)a5 url:(id)a6 lifetimeObject:(id)a7
{
  height = a4.height;
  width = a4.width;
  lifetimes = self->_lifetimes;
  v14 = a6;
  v15 = a3;
  [(NSMutableSet *)lifetimes addObject:a7];
  v16 = objc_alloc_init(_PBUIImageSlotRepositoryEntry);
  [(_PBUIImageSlotRepositoryEntry *)v16 setUrl:v14];

  [(_PBUIImageSlotRepositoryEntry *)v16 setSize:width, height];
  [(_PBUIImageSlotRepositoryEntry *)v16 setActualStyle:a5];
  [(NSMutableDictionary *)self->_slots setObject:v16 forKey:v15];
}

- (void)freeImageSlotWithIdentifier:(id)a3 lifetime:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_slots objectForKeyedSubscript:v8];
  if (v7)
  {
    [(NSMutableDictionary *)self->_slots removeObjectForKey:v8];
  }

  [(NSMutableSet *)self->_lifetimes removeObject:v6];
}

- (void)setImageSlot:(id)a3 forIdentifier:(id)a4
{
  slots = self->_slots;
  v6 = a3;
  v7 = [(NSMutableDictionary *)slots objectForKeyedSubscript:a4];
  [v7 setImage:v6];
}

- (BOOL)hasSlotForIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_slots objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)urlForIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_slots objectForKeyedSubscript:a3];
  v4 = [v3 url];

  return v4;
}

- (CGSize)sizeForIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_slots objectForKeyedSubscript:a3];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (int64_t)actualStyleForIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_slots objectForKeyedSubscript:a3];
  v4 = [v3 actualStyle];

  return v4;
}

- (id)ioSurfaceForIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_slots objectForKeyedSubscript:a3];
  v4 = [v3 ioSurface];

  return v4;
}

@end