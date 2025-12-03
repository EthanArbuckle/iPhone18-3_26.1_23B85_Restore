@interface ICDrawingCommand
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualDrawingCommand:(id)command;
- (ICDrawingCommand)initWithArchive:(const void *)archive version:(unsigned int)version sortedUUIDs:(id)ds;
- (ICDrawingCommand)initWithCommand:(id)command hidden:(BOOL)hidden timestamp:(TopoID)timestamp;
- (TopoID)timestamp;
- (id)description;
- (unsigned)saveToArchive:(void *)archive sortedUUIDs:(id)ds withPathData:(BOOL)data;
@end

@implementation ICDrawingCommand

- (ICDrawingCommand)initWithCommand:(id)command hidden:(BOOL)hidden timestamp:(TopoID)timestamp
{
  clock = timestamp.clock;
  replicaID = timestamp.replicaID;
  commandCopy = command;
  v14.receiver = self;
  v14.super_class = ICDrawingCommand;
  v11 = [(ICDrawingCommand *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_data, command);
    v12->_hidden = hidden;
    objc_storeStrong(&v12->_timestamp.replicaID, replicaID);
    v12->_timestamp.clock = clock;
  }

  return v12;
}

- (BOOL)isEqualDrawingCommand:(id)command
{
  commandCopy = command;
  data = [(ICDrawingCommand *)self data];
  data2 = [commandCopy data];
  v7 = [data isEqual:data2];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ICDrawingCommand *)self isEqualDrawingCommand:equalCopy];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  type = [(ICDrawingCommandData *)self->_data type];
  points = [(ICDrawingCommandData *)self->_data points];
  v9 = *points;
  v8 = points[1];
  hidden = [(ICDrawingCommand *)self hidden];
  v11 = &stru_2827172C0;
  if (hidden)
  {
    v11 = @" hidden";
  }

  v12 = [v3 stringWithFormat:@"<%@ %p type=%ld points=%ld%@>", v5, self, type, (v8 - v9) >> 6, v11];

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

- (ICDrawingCommand)initWithArchive:(const void *)archive version:(unsigned int)version sortedUUIDs:(id)ds
{
  v5 = *&version;
  dsCopy = ds;
  v9 = dsCopy;
  v10 = *(archive + 11);
  if (!v10)
  {
    v10 = *(drawing::Command::default_instance(dsCopy) + 88);
  }

  v11 = *(v10 + 48);
  v12 = [(drawing::Command *)v9 count];
  if (v12 >= v11)
  {
    v14 = *(archive + 11);
    if (!v14)
    {
      v14 = *(drawing::Command::default_instance(v12) + 88);
    }

    v15 = [(drawing::Command *)v9 objectAtIndexedSubscript:*(v14 + 48)];
    v16 = v15;
    v17 = *(archive + 11);
    if (!v17)
    {
      v17 = *(drawing::Command::default_instance(v15) + 88);
    }

    v18 = *(v17 + 40);
    v19 = *(archive + 8);
    v20 = [[ICDrawingCommandData alloc] initWithArchive:archive version:v5 sortedUUIDs:v9];
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

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unsigned)saveToArchive:(void *)archive sortedUUIDs:(id)ds withPathData:(BOOL)data
{
  dataCopy = data;
  dsCopy = ds;
  *(archive + 8) |= 0x20u;
  v9 = *(archive + 11);
  if (!v9)
  {
    operator new();
  }

  timestamp = [(ICDrawingCommand *)self timestamp];
  *(v9 + 32) |= 1u;
  *(v9 + 40) = v11;

  timestamp2 = [(ICDrawingCommand *)self timestamp];
  v13 = [dsCopy indexOfObject:timestamp2];

  *(archive + 8) |= 0x20u;
  v14 = *(archive + 11);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 32) |= 4u;
  *(v14 + 48) = v13;
  data = [(ICDrawingCommand *)self data];
  [data saveToArchive:archive sortedUUIDs:dsCopy withPathData:dataCopy isHidden:{-[ICDrawingCommand hidden](self, "hidden")}];

  return 1;
}

@end