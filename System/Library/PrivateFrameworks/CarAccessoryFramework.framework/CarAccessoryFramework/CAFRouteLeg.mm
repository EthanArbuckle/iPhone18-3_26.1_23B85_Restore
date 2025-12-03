@interface CAFRouteLeg
- (CAFRouteLeg)initWithCoordinates:(id)coordinates destination:(id)destination origin:(id)origin;
- (CAFRouteLeg)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFRouteLeg

- (CAFRouteLeg)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = CAFRouteLeg;
  v5 = [(CAFRouteLeg *)&v16 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [dictionaryCopy objectForKey:@"coordinates"];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    coordinates = v5->_coordinates;
    v5->_coordinates = v7;

    objc_opt_class();
    v9 = [dictionaryCopy objectForKey:@"destination"];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    destination = v5->_destination;
    v5->_destination = v10;

    objc_opt_class();
    v12 = [dictionaryCopy objectForKey:@"origin"];
    if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    origin = v5->_origin;
    v5->_origin = v13;
  }

  return v5;
}

- (CAFRouteLeg)initWithCoordinates:(id)coordinates destination:(id)destination origin:(id)origin
{
  coordinatesCopy = coordinates;
  destinationCopy = destination;
  originCopy = origin;
  v15.receiver = self;
  v15.super_class = CAFRouteLeg;
  v12 = [(CAFRouteLeg *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_coordinates, coordinates);
    objc_storeStrong(&v13->_destination, destination);
    objc_storeStrong(&v13->_origin, origin);
  }

  return v13;
}

- (NSDictionary)dictionaryRepresentation
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"coordinates";
  coordinates = [(CAFRouteLeg *)self coordinates];
  arrayRepresentation = [coordinates arrayRepresentation];
  null = arrayRepresentation;
  if (!arrayRepresentation)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v16[0] = null;
  v15[1] = @"destination";
  destination = [(CAFRouteLeg *)self destination];
  dictionaryRepresentation = [destination dictionaryRepresentation];
  null2 = dictionaryRepresentation;
  if (!dictionaryRepresentation)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v16[1] = null2;
  v15[2] = @"origin";
  origin = [(CAFRouteLeg *)self origin];
  dictionaryRepresentation2 = [origin dictionaryRepresentation];
  null3 = dictionaryRepresentation2;
  if (!dictionaryRepresentation2)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v16[2] = null3;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  if (!dictionaryRepresentation2)
  {
  }

  if (!dictionaryRepresentation)
  {
  }

  if (!arrayRepresentation)
  {
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  coordinates = [(CAFRouteLeg *)self coordinates];
  destination = [(CAFRouteLeg *)self destination];
  origin = [(CAFRouteLeg *)self origin];
  v8 = [v3 stringWithFormat:@"<%@: %p { %@: %@, %@: %@, %@: %@ }>", v4, self, @"coordinates", coordinates, @"destination", destination, @"origin", origin];

  return v8;
}

@end