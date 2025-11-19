@interface ICDrawingCommand
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualDrawingCommand:(id)a3;
- (ICDrawingCommand)initWithArchive:(const void *)a3 version:(unsigned int)a4 sortedUUIDs:(id)a5;
- (ICDrawingCommand)initWithCommand:(id)a3 hidden:(BOOL)a4 timestamp:(TopoID)a5;
- (TopoID)timestamp;
- (id)description;
- (unsigned)saveToArchive:(void *)a3 sortedUUIDs:(id)a4 withPathData:(BOOL)a5;
@end

@implementation ICDrawingCommand

- (ICDrawingCommand)initWithCommand:(id)a3 hidden:(BOOL)a4 timestamp:(TopoID)a5
{
  clock = a5.clock;
  replicaID = a5.replicaID;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = ICDrawingCommand;
  v11 = [(ICDrawingCommand *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_data, a3);
    v12->_hidden = a4;
    objc_storeStrong(&v12->_timestamp.replicaID, replicaID);
    v12->_timestamp.clock = clock;
  }

  return v12;
}

- (BOOL)isEqualDrawingCommand:(id)a3
{
  v4 = a3;
  v5 = [(ICDrawingCommand *)self data];
  v6 = [v4 data];
  v7 = [v5 isEqual:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ICDrawingCommand *)self isEqualDrawingCommand:v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICDrawingCommandData *)self->_data type];
  v7 = [(ICDrawingCommandData *)self->_data points];
  v9 = *v7;
  v8 = v7[1];
  v10 = [(ICDrawingCommand *)self hidden];
  v11 = &stru_2827172C0;
  if (v10)
  {
    v11 = @" hidden";
  }

  v12 = [v3 stringWithFormat:@"<%@ %p type=%ld points=%ld%@>", v5, self, v6, (v8 - v9) >> 6, v11];

  return v12;
}

- (TopoID)timestamp
{
  v3 = self->_timestamp.replicaID;
  clock = self->_timestamp.clock;
  result.clock = clock;
  result.replicaID = v3;
  return result;
}

- (ICDrawingCommand)initWithArchive:(const void *)a3 version:(unsigned int)a4 sortedUUIDs:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v9 = v8;
  v10 = *(a3 + 11);
  if (!v10)
  {
    v10 = *(drawing::Command::default_instance(v8) + 88);
  }

  v11 = *(v10 + 48);
  v12 = [(drawing::Command *)v9 count];
  if (v12 >= v11)
  {
    v14 = *(a3 + 11);
    if (!v14)
    {
      v14 = *(drawing::Command::default_instance(v12) + 88);
    }

    v15 = [(drawing::Command *)v9 objectAtIndexedSubscript:*(v14 + 48)];
    v16 = v15;
    v17 = *(a3 + 11);
    if (!v17)
    {
      v17 = *(drawing::Command::default_instance(v15) + 88);
    }

    v18 = *(v17 + 40);
    v19 = *(a3 + 8);
    v20 = [[ICDrawingCommandData alloc] initWithArchive:a3 version:v5 sortedUUIDs:v9];
    v21 = v16;
    v22 = v21;
    if (self)
    {
      v23 = [(ICDrawingCommand *)self initWithCommand:v20 hidden:(v19 & 0x40) == 0 timestamp:v21, v18];
    }

    else
    {

      v23 = 0;
    }

    self = v23;

    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unsigned)saveToArchive:(void *)a3 sortedUUIDs:(id)a4 withPathData:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  *(a3 + 8) |= 0x20u;
  v9 = *(a3 + 11);
  if (!v9)
  {
    operator new();
  }

  v10 = [(ICDrawingCommand *)self timestamp];
  *(v9 + 32) |= 1u;
  *(v9 + 40) = v11;

  v12 = [(ICDrawingCommand *)self timestamp];
  v13 = [v8 indexOfObject:v12];

  *(a3 + 8) |= 0x20u;
  v14 = *(a3 + 11);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 32) |= 4u;
  *(v14 + 48) = v13;
  v15 = [(ICDrawingCommand *)self data];
  [v15 saveToArchive:a3 sortedUUIDs:v8 withPathData:v5 isHidden:{-[ICDrawingCommand hidden](self, "hidden")}];

  return 1;
}

@end