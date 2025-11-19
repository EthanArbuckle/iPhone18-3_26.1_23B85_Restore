@interface VCPAnimal
- (CGRect)bounds;
- (CGRect)torsoBounds;
- (VCPAnimal)init;
@end

@implementation VCPAnimal

- (VCPAnimal)init
{
  v10.receiver = self;
  v10.super_class = VCPAnimal;
  v2 = [(VCPAnimal *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x1E695F058];
    v5 = *(MEMORY[0x1E695F058] + 16);
    v2->_bounds.origin = *MEMORY[0x1E695F058];
    v2->_bounds.size = v5;
    v2->_torsoBounds.origin = v4;
    v2->_torsoBounds.size = v5;
    *&v2->_confidence = 0xFFFFFFFF00000000;
    v6 = MEMORY[0x1E6960C98];
    v7 = *(MEMORY[0x1E6960C98] + 16);
    *&v2->_timerange.start.value = *MEMORY[0x1E6960C98];
    *&v2->_timerange.start.epoch = v7;
    *&v2->_timerange.duration.timescale = *(v6 + 32);
    animalPrint = v2->_animalPrint;
    v2->_animalPrint = 0;
  }

  return v3;
}

- (CGRect)bounds
{
  objc_copyStruct(v6, &self->_bounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)torsoBounds
{
  objc_copyStruct(v6, &self->_torsoBounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end