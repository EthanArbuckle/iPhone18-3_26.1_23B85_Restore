@interface ICDrawing
+ (CGAffineTransform)defaultSizeOrientationTransform:(SEL)transform;
+ (CGAffineTransform)orientationTransform:(SEL)transform size:(int64_t)size;
+ (CGSize)defaultPixelSize;
+ (CGSize)defaultSize;
+ (CGSize)fullSize:(CGSize)result forOrientation:(int64_t)orientation;
- (BOOL)canChangeTransientOrientation;
- (BOOL)setTransientOrientation:(int64_t)orientation;
- (CGAffineTransform)orientationTransform;
- (CGRect)bounds;
- (CGRect)calculateCommandBounds;
- (CGRect)commandBounds;
- (CGRect)fullBounds;
- (CGRect)unrotatedBoundsInCommandSpace;
- (CGSize)fullSize;
- (CGSize)unrotatedSize;
- (ICDrawing)init;
- (ICDrawing)initWithArchive:(const void *)archive version:(unsigned int)version replicaID:(id)d;
- (ICDrawing)initWithCommands:(id)commands fromDrawing:(id)drawing;
- (ICDrawing)initWithData:(id)data version:(unsigned int)version replicaID:(id)d;
- (ICDrawing)initWithDrawing:(id)drawing;
- (ICDrawing)initWithReplicaID:(id)d;
- (ICDrawingCommandID)commandIDForNewCommand;
- (NSOrderedSet)visibleCommands;
- (id)copyWithZone:(_NSZone *)zone;
- (id)insertNewTestCommand;
- (id)serializeWithPathData:(BOOL)data;
- (id)serializeWithPathData:(BOOL)data toVersion:(unsigned int *)version;
- (id)setCommand:(id)command hidden:(BOOL)hidden;
- (id)visibleCommandForInsertingCommand:(id)command;
- (int64_t)imageOrientation;
- (unint64_t)mergeWithDrawing:(id)drawing;
- (unsigned)saveToArchive:(void *)archive withPathData:(BOOL)data;
- (void)addNewCommand:(id)command;
- (void)invalidateBounds;
- (void)setCommandIDForInsertion:(id)insertion;
- (void)setOrientation:(int64_t)orientation;
- (void)takeOrientationFrom:(id)from;
@end

@implementation ICDrawing

- (ICDrawing)init
{
  [(ICDrawing *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICDrawing)initWithReplicaID:(id)d
{
  dCopy = d;
  v18.receiver = self;
  v18.super_class = ICDrawing;
  v6 = [(ICDrawing *)&v18 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
    commands = v6->_commands;
    v6->_commands = v7;

    objc_storeStrong(&v6->_replicaUUID, d);
    v9 = [[ICTTVectorMultiTimestamp alloc] initWithCapacity:2];
    timestamp = v6->_timestamp;
    v6->_timestamp = v9;

    v6->_orientation = 0;
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    orientationTimestamp = v6->_orientationTimestamp;
    v6->_orientationTimestamp = distantPast;

    v13 = *MEMORY[0x277CBF398];
    v14 = *(MEMORY[0x277CBF398] + 16);
    v6->_unrotatedBoundsInCommandSpace.origin = *MEMORY[0x277CBF398];
    v6->_unrotatedBoundsInCommandSpace.size = v14;
    v6->_commandBounds.origin = v13;
    v6->_commandBounds.size = v14;
    +[ICDrawing defaultSize];
    v6->_unrotatedSize.width = v15;
    v6->_unrotatedSize.height = v16;
  }

  return v6;
}

- (ICDrawing)initWithDrawing:(id)drawing
{
  drawingCopy = drawing;
  v27.receiver = self;
  v27.super_class = ICDrawing;
  v5 = [(ICDrawing *)&v27 init];
  if (v5)
  {
    commands = [drawingCopy commands];
    v7 = [commands mutableCopy];
    commands = v5->_commands;
    v5->_commands = v7;

    replicaUUID = [drawingCopy replicaUUID];
    replicaUUID = v5->_replicaUUID;
    v5->_replicaUUID = replicaUUID;

    timestamp = [drawingCopy timestamp];
    v12 = [timestamp copy];
    timestamp = v5->_timestamp;
    v5->_timestamp = v12;

    v5->_orientation = [drawingCopy orientation];
    orientationTimestamp = [drawingCopy orientationTimestamp];
    orientationTimestamp = v5->_orientationTimestamp;
    v5->_orientationTimestamp = orientationTimestamp;

    [drawingCopy unrotatedBoundsInCommandSpace];
    v5->_unrotatedBoundsInCommandSpace.origin.x = v16;
    v5->_unrotatedBoundsInCommandSpace.origin.y = v17;
    v5->_unrotatedBoundsInCommandSpace.size.width = v18;
    v5->_unrotatedBoundsInCommandSpace.size.height = v19;
    [drawingCopy commandBounds];
    v5->_commandBounds.origin.x = v20;
    v5->_commandBounds.origin.y = v21;
    v5->_commandBounds.size.width = v22;
    v5->_commandBounds.size.height = v23;
    [drawingCopy unrotatedSize];
    v5->_unrotatedSize.width = v24;
    v5->_unrotatedSize.height = v25;
  }

  return v5;
}

- (ICDrawing)initWithCommands:(id)commands fromDrawing:(id)drawing
{
  commandsCopy = commands;
  drawingCopy = drawing;
  replicaUUID = [drawingCopy replicaUUID];
  v9 = [(ICDrawing *)self initWithReplicaID:replicaUUID];

  if (v9)
  {
    v10 = [commandsCopy copy];
    commands = v9->_commands;
    v9->_commands = v10;

    timestamp = [drawingCopy timestamp];
    v13 = [timestamp copy];
    timestamp = v9->_timestamp;
    v9->_timestamp = v13;

    v9->_orientation = [drawingCopy orientation];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ICDrawing allocWithZone:zone];

  return [(ICDrawing *)v4 initWithDrawing:self];
}

- (NSOrderedSet)visibleCommands
{
  visibleCommands = self->_visibleCommands;
  if (!visibleCommands)
  {
    v4 = [(NSMutableOrderedSet *)self->_commands indexesOfObjectsPassingTest:&__block_literal_global_28];
    if ([v4 count])
    {
      commands = [(ICDrawing *)self commands];
      v6 = [commands mutableCopy];
      v7 = self->_visibleCommands;
      self->_visibleCommands = v6;

      [(NSMutableOrderedSet *)self->_visibleCommands removeObjectsAtIndexes:v4];
    }

    else
    {
      commands2 = [(ICDrawing *)self commands];
      v9 = [commands2 mutableCopy];
      v10 = self->_visibleCommands;
      self->_visibleCommands = v9;
    }

    visibleCommands = self->_visibleCommands;
  }

  return visibleCommands;
}

- (CGRect)calculateCommandBounds
{
  v30 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  visibleCommands = [(ICDrawing *)self visibleCommands];
  v8 = [visibleCommands countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(visibleCommands);
        }

        data = [*(*(&v25 + 1) + 8 * v10) data];
        [data bounds];
        v36.origin.x = v12;
        v36.origin.y = v13;
        v36.size.width = v14;
        v36.size.height = v15;
        v31.origin.x = x;
        v31.origin.y = y;
        v31.size.width = width;
        v31.size.height = height;
        v32 = CGRectUnion(v31, v36);
        x = v32.origin.x;
        y = v32.origin.y;
        width = v32.size.width;
        height = v32.size.height;

        ++v10;
      }

      while (v8 != v10);
      v8 = [visibleCommands countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  IsNull = CGRectIsNull(v33);
  [(ICDrawing *)self unrotatedSize];
  v19 = v18;
  if (IsNull)
  {
    [(ICDrawing *)self unrotatedSize];
    v20 = v19 * 0.5;
    v22 = v21 * 0.5;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v37.size.height = v17;
    v37.origin.x = 0.0;
    v37.origin.y = 0.0;
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    v37.size.width = v19;
    *&v20 = CGRectIntersection(v34, v37);
  }

  return CGRectIntegral(*&v20);
}

- (CGRect)commandBounds
{
  if (CGRectIsNull(self->_commandBounds))
  {
    [(ICDrawing *)self calculateCommandBounds];
    self->_commandBounds.origin.x = x;
    self->_commandBounds.origin.y = y;
    self->_commandBounds.size.width = width;
    self->_commandBounds.size.height = height;
  }

  else
  {
    x = self->_commandBounds.origin.x;
    y = self->_commandBounds.origin.y;
    width = self->_commandBounds.size.width;
    height = self->_commandBounds.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)bounds
{
  [(ICDrawing *)self unrotatedBoundsInCommandSpace];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  if (CGRectIsNull(v12))
  {
    [(ICDrawing *)self commandBounds];
    x = v7;
    y = v8;
    width = v9;
    height = v10;
  }

  [(ICDrawing *)self orientationTransform];
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  return CGRectApplyAffineTransform(v13, &v11);
}

- (void)invalidateBounds
{
  v2 = *(MEMORY[0x277CBF398] + 16);
  self->_commandBounds.origin = *MEMORY[0x277CBF398];
  self->_commandBounds.size = v2;
}

- (void)takeOrientationFrom:(id)from
{
  fromCopy = from;
  if (fromCopy)
  {
    v7 = fromCopy;
    self->_orientation = [fromCopy orientation];
    orientationTimestamp = [v7 orientationTimestamp];
    orientationTimestamp = self->_orientationTimestamp;
    self->_orientationTimestamp = orientationTimestamp;

    fromCopy = v7;
  }
}

- (void)setOrientation:(int64_t)orientation
{
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
    date = [MEMORY[0x277CBEAA8] date];
    [(ICDrawing *)self setOrientationTimestamp:?];
  }
}

- (BOOL)canChangeTransientOrientation
{
  commands = [(ICDrawing *)self commands];
  if ([commands count])
  {
    v4 = 0;
  }

  else
  {
    orientationTimestamp = [(ICDrawing *)self orientationTimestamp];
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v4 = [orientationTimestamp isEqualToDate:distantPast];
  }

  return v4;
}

- (BOOL)setTransientOrientation:(int64_t)orientation
{
  canChangeTransientOrientation = [(ICDrawing *)self canChangeTransientOrientation];
  if (canChangeTransientOrientation)
  {
    self->_orientation = orientation;
  }

  return canChangeTransientOrientation;
}

uint64_t __26__ICDrawing_sortCommands___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 data];
  v7 = v6;
  if (v6)
  {
    [v6 commandID];
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  v8 = [v5 data];
  v9 = v8;
  if (v8)
  {
    [v8 commandID];
    v10 = v21;
    v11 = v25;
    if (v25 < v21)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = 0;
    v21 = 0;
    v23 = 0;
    v24 = 0;
    v11 = v25;
  }

  if (v11 != v10)
  {
    goto LABEL_13;
  }

  v12 = [v26 TTCompare:v23];
  if (v12 == -1)
  {
LABEL_16:

    goto LABEL_17;
  }

  if (v12)
  {
LABEL_13:
  }

  else
  {

    if (v27 < v24)
    {
LABEL_17:
      v15 = -1;
      goto LABEL_27;
    }
  }

  v13 = [v4 data];
  v14 = v13;
  if (v13)
  {
    [v13 commandID];
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  v16 = [v5 data];
  v17 = v16;
  if (v16)
  {
    [v16 commandID];
    v18 = v22;
  }

  else
  {
    v18 = 0;
    v23 = 0;
    v24 = 0;
  }

  if (v25 == v18 && v27 == v24)
  {
    v19 = [v26 isEqual:v23];
  }

  else
  {
    v19 = 0;
  }

  v15 = ~v19 & 1;
LABEL_27:

  return v15;
}

- (ICDrawingCommandID)commandIDForNewCommand
{
  timestamp = [(ICDrawing *)self timestamp];
  replicaUUID = [(ICDrawing *)self replicaUUID];
  v7 = [timestamp clockElementForUUID:replicaUUID atIndex:0];

  retstr->clock = [v7 clock];
  retstr->replicaUUID = [(ICDrawing *)self replicaUUID];
  retstr->subclock = [v7 subclock] + 1;
  commands = [(ICDrawing *)self commands];
  v9 = [commands count];

  if (v9)
  {
    commands2 = [(ICDrawing *)self commands];
    lastObject = [commands2 lastObject];

    data = [lastObject data];
    v13 = data;
    if (data)
    {
      [data commandID];
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
    }

    if (ICDrawingCommandID::operator<=(retstr, &v21))
    {
      v14 = v21;
      replicaUUID2 = [(ICDrawing *)self replicaUUID];
      retstr->clock = v14;
      replicaUUID = retstr->replicaUUID;
      retstr->replicaUUID = replicaUUID2;

      retstr->subclock = 0;
      if (ICDrawingCommandID::operator<=(retstr, &v21))
      {
        v17 = v21;
        replicaUUID3 = [(ICDrawing *)self replicaUUID];
        retstr->clock = v17 + 1;
        v19 = retstr->replicaUUID;
        retstr->replicaUUID = replicaUUID3;

        retstr->subclock = 0;
      }
    }
  }

  return result;
}

- (id)insertNewTestCommand
{
  v3 = objc_alloc_init(ICDrawingCommandData);
  [(ICDrawingCommandData *)v3 setType:0];
  [(ICDrawing *)self setCommandIDForInsertion:v3];
  v4 = [(ICDrawing *)self visibleCommandForInsertingCommand:v3];
  [(ICDrawing *)self addNewCommand:v4];

  return v4;
}

- (void)setCommandIDForInsertion:(id)insertion
{
  insertionCopy = insertion;
  [(ICDrawing *)self commandIDForNewCommand];
  v6 = v9;
  v5 = v10;
  v7 = v5;
  v8 = v11;
  if (insertionCopy)
  {
    [insertionCopy setCommandID:&v6];
  }

  else
  {
  }
}

- (id)visibleCommandForInsertingCommand:(id)command
{
  commandCopy = command;
  v5 = [ICDrawingCommand alloc];
  replicaUUID = [(ICDrawing *)self replicaUUID];
  if (v5)
  {
    v5 = [(ICDrawingCommand *)v5 initWithCommand:commandCopy hidden:0 timestamp:replicaUUID, 0];
  }

  else
  {
  }

  return v5;
}

- (void)addNewCommand:(id)command
{
  commandCopy = command;
  orientationTimestamp = [(ICDrawing *)self orientationTimestamp];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v7 = [orientationTimestamp isEqualToDate:distantPast];

  if (v7)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(ICDrawing *)self setOrientationTimestamp:date];
  }

  [(NSMutableOrderedSet *)self->_commands addObject:commandCopy];
  if (self->_visibleCommands && ([commandCopy hidden] & 1) == 0)
  {
    [(NSMutableOrderedSet *)self->_visibleCommands addObject:commandCopy];
  }

  timestamp = [(ICDrawing *)self timestamp];
  data = [commandCopy data];
  v11 = data;
  if (data)
  {
    [data commandID];
    v12 = v20;
  }

  else
  {
    v12 = 0;
    v21 = 0;
  }

  data2 = [commandCopy data];
  v14 = data2;
  if (data2)
  {
    [data2 commandID];
    v15 = v19;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v18 = 0;
  }

  replicaUUID = [(ICDrawing *)self replicaUUID];
  [timestamp setClock:v12 subclock:v15 forUUID:replicaUUID atIndex:0];

  [(ICDrawing *)self invalidateBounds];
}

- (id)setCommand:(id)command hidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  commandCopy = command;
  commands = [(ICDrawing *)self commands];
  v8 = [commands indexOfObject:commandCopy];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICDrawing setCommand:v9 hidden:?];
    }

    v10 = commandCopy;
    goto LABEL_11;
  }

  commands2 = [(ICDrawing *)self commands];
  v12 = [commands2 objectAtIndexedSubscript:v8];

  if ([v12 hidden] == hiddenCopy)
  {
    v10 = v12;
LABEL_11:
    v12 = v10;
    v29 = v10;
    goto LABEL_14;
  }

  timestamp = [(ICDrawing *)self timestamp];
  replicaUUID = [(ICDrawing *)self replicaUUID];
  v15 = [timestamp clockElementForUUID:replicaUUID atIndex:1];

  timestamp2 = [v12 timestamp];
  v18 = v17;
  replicaUUID2 = [(ICDrawing *)self replicaUUID];

  clock = [v15 clock];
  if (v18 <= clock)
  {
    v18 = clock;
  }

  timestamp3 = [(ICDrawing *)self timestamp];
  replicaUUID3 = [(ICDrawing *)self replicaUUID];
  v23 = v18 + 1;
  [timestamp3 setClock:v23 forUUID:replicaUUID3 atIndex:1];

  visibleCommands = self->_visibleCommands;
  self->_visibleCommands = 0;

  v25 = [ICDrawingCommand alloc];
  data = [v12 data];
  v27 = replicaUUID2;
  v28 = v27;
  if (v25)
  {
    v29 = [(ICDrawingCommand *)v25 initWithCommand:data hidden:hiddenCopy timestamp:v27, v23];
  }

  else
  {

    v29 = 0;
  }

  [(NSMutableOrderedSet *)self->_commands replaceObjectAtIndex:v8 withObject:v29];
LABEL_14:

  return v29;
}

- (unint64_t)mergeWithDrawing:(id)drawing
{
  v58 = *MEMORY[0x277D85DE8];
  drawingCopy = drawing;
  orientationTimestamp = [drawingCopy orientationTimestamp];
  orientationTimestamp2 = [(ICDrawing *)self orientationTimestamp];
  v6 = [orientationTimestamp compare:orientationTimestamp2];

  if (v6 == -1 || ([drawingCopy orientationTimestamp], v7 = objc_claimAutoreleasedReturnValue(), orientationTimestamp = self->_orientationTimestamp, self->_orientationTimestamp = v7, orientationTimestamp, orientation = self->_orientation, orientation == objc_msgSend(drawingCopy, "orientation")))
  {
    v10 = 1;
  }

  else
  {
    self->_orientation = [drawingCopy orientation];
    v10 = 2;
  }

  timestamp = [(ICDrawing *)self timestamp];
  timestamp2 = [drawingCopy timestamp];
  v13 = [timestamp compareTo:timestamp2];

  if (v13)
  {
    [drawingCopy unrotatedBoundsInCommandSpace];
    if (!CGRectIsNull(v59))
    {
      [(ICDrawing *)self unrotatedBoundsInCommandSpace];
      IsNull = CGRectIsNull(v60);
      v15 = v13 == 1 || IsNull;
      if (v15 == 1)
      {
        [drawingCopy unrotatedBoundsInCommandSpace];
      }

      else
      {
        [(ICDrawing *)self unrotatedBoundsInCommandSpace];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        [drawingCopy unrotatedBoundsInCommandSpace];
        v62.origin.x = v28;
        v62.origin.y = v29;
        v62.size.width = v30;
        v62.size.height = v31;
        v61.origin.x = v21;
        v61.origin.y = v23;
        v61.size.width = v25;
        v61.size.height = v27;
        *&v16 = CGRectUnion(v61, v62);
      }

      [(ICDrawing *)self setUnrotatedBoundsInCommandSpace:v16, v17, v18, v19];
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = [drawingCopy commands];
    v32 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v32)
    {
      v33 = *v54;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v54 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v53 + 1) + 8 * i);
          v36 = [(NSMutableOrderedSet *)self->_commands indexOfObject:v35];
          commands = self->_commands;
          if (v36 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [(NSMutableOrderedSet *)commands addObject:v35];
            continue;
          }

          v38 = [(NSMutableOrderedSet *)commands objectAtIndex:v36];
          v39 = v38;
          if (v38)
          {
            timestamp3 = [v38 timestamp];
            v42 = v41;
            timestamp4 = [v35 timestamp];
            v45 = timestamp4;
            if (v42 >= v44)
            {
              if (v42 != v44)
              {

                goto LABEL_28;
              }

              v46 = [timestamp3 TTCompare:timestamp4] == -1;

              if (!v46)
              {
                goto LABEL_28;
              }
            }

            else
            {
            }

            [(NSMutableOrderedSet *)self->_commands replaceObjectAtIndex:v36 withObject:v35];
          }

LABEL_28:
        }

        v32 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v32);
    }

    [(ICDrawing *)self sortCommands];
    timestamp5 = [(ICDrawing *)self timestamp];
    timestamp6 = [drawingCopy timestamp];
    [timestamp5 mergeWithTimestamp:timestamp6];

    [(ICDrawing *)self invalidateBounds];
    visibleCommands = self->_visibleCommands;
    self->_visibleCommands = 0;

    v10 = 2;
  }

  return v10;
}

- (CGSize)fullSize
{
  [(ICDrawing *)self unrotatedSize];
  orientation = self->_orientation;

  [ICDrawing fullSize:orientation forOrientation:?];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)fullSize:(CGSize)result forOrientation:(int64_t)orientation
{
  if (orientation >= 2)
  {
    height = result.height;
  }

  else
  {
    height = result.width;
  }

  if (orientation >= 2)
  {
    result.height = result.width;
  }

  v5 = height;
  result.width = v5;
  return result;
}

- (CGRect)fullBounds
{
  [(ICDrawing *)self unrotatedSize];
  v4 = v3;
  [(ICDrawing *)self unrotatedSize];
  v6 = v5;
  [(ICDrawing *)self orientationTransform];
  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = v4;
  v8.size.height = v6;
  return CGRectApplyAffineTransform(v8, &v7);
}

+ (CGAffineTransform)defaultSizeOrientationTransform:(SEL)transform
{
  +[ICDrawing defaultSize];
  [ICDrawing fullSize:a4 forOrientation:?];

  return [ICDrawing orientationTransform:a4 size:?];
}

- (CGAffineTransform)orientationTransform
{
  orientation = self->_orientation;
  [(ICDrawing *)self fullSize];

  return [ICDrawing orientationTransform:orientation size:?];
}

+ (CGAffineTransform)orientationTransform:(SEL)transform size:(int64_t)size
{
  v5 = MEMORY[0x277CBF2C0];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  switch(size)
  {
    case 3:
      *&retstr->a = xmmword_2150C0700;
      *&retstr->c = xmmword_2150C06F0;
      retstr->tx = a5.width;
      retstr->ty = 0.0;
      break;
    case 2:
      *&retstr->a = xmmword_2150C06E0;
      retstr->d = 0.0;
      retstr->tx = 0.0;
      retstr->c = 1.0;
      retstr->ty = a5.height;
      break;
    case 1:
      retstr->a = -1.0;
      retstr->b = 0.0;
      retstr->c = 0.0;
      retstr->d = -1.0;
      *&retstr->tx = a5;
      break;
  }

  return result;
}

- (int64_t)imageOrientation
{
  result = [(ICDrawing *)self orientation];
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

+ (CGSize)defaultPixelSize
{
  [MEMORY[0x277D361D0] notesDeviceDrawingSize];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)defaultSize
{
  v2 = 1024.0;
  v3 = 768.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)unrotatedSize
{
  width = self->_unrotatedSize.width;
  height = self->_unrotatedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)unrotatedBoundsInCommandSpace
{
  x = self->_unrotatedBoundsInCommandSpace.origin.x;
  y = self->_unrotatedBoundsInCommandSpace.origin.y;
  width = self->_unrotatedBoundsInCommandSpace.size.width;
  height = self->_unrotatedBoundsInCommandSpace.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (ICDrawing)initWithData:(id)data version:(unsigned int)version replicaID:(id)d
{
  v6 = *&version;
  dataCopy = data;
  dCopy = d;
  if (!dataCopy)
  {
    v12 = [(ICDrawing *)self initWithReplicaID:dCopy];
    goto LABEL_5;
  }

  drawing::Drawing::Drawing(v16);
  bytes = [dataCopy bytes];
  v11 = ICTTBoundedCheckedCastNSUIntegerToUInt32([dataCopy length]);
  if (google::protobuf::MessageLite::ParseFromArray(v16, bytes, v11))
  {
    v12 = [(ICDrawing *)self initWithArchive:v16 version:v6 replicaID:dCopy];
    drawing::Drawing::~Drawing(v16);
LABEL_5:
    self = v12;
    selfCopy = self;
    goto LABEL_9;
  }

  v14 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [ICDrawing(ICDrawingPersistenceAdditions) initWithData:v14 version:? replicaID:?];
  }

  drawing::Drawing::~Drawing(v16);
  selfCopy = 0;
LABEL_9:

  return selfCopy;
}

- (ICDrawing)initWithArchive:(const void *)archive version:(unsigned int)version replicaID:(id)d
{
  v5 = *&version;
  dCopy = d;
  v9 = (archive + 48);
  if ((*(archive + 32) & 1) != 0 && *(archive + 12) == 6)
  {
    v10 = [(ICDrawing *)self initWithReplicaID:dCopy];
    if (v10)
    {
      v11 = [ICTTVectorMultiTimestamp alloc];
      v12 = v11;
      v13 = *(archive + 5);
      if (!v13)
      {
        v13 = *(drawing::Drawing::default_instance(v11) + 40);
      }

      v14 = [(ICTTVectorMultiTimestamp *)v12 initWithArchive:v13 andCapacity:2];
      [(ICDrawing *)v10 setTimestamp:v14];

      timestamp = [(ICDrawing *)v10 timestamp];
      sortedUUIDs = [timestamp sortedUUIDs];

      v18 = *(archive + 16);
      if (v18)
      {
        for (i = 0; i != v18; ++i)
        {
          v20 = [[ICDrawingCommand alloc] initWithArchive:google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<drawing::Command>::TypeHandler>(archive + 56 version:i) sortedUUIDs:v5, sortedUUIDs];
          if (v20)
          {
            mutableCommands = [(ICDrawing *)v10 mutableCommands];
            [mutableCommands addObject:v20];
          }
        }
      }

      v22 = *(archive + 8);
      if ((~v22 & 0x18) == 0)
      {
        [(ICDrawing *)v10 setOrientation:*(archive + 13)];
        v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(archive + 10)];
        [(ICDrawing *)v10 setOrientationTimestamp:v23];

        v22 = *(archive + 8);
      }

      if ((v22 & 0x20) != 0)
      {
        v24 = *(archive + 11);
        if (!v24)
        {
          v24 = *(drawing::Drawing::default_instance(v17) + 88);
        }

        drawing::Rectangle::Rectangle(v28, v24);
        [(ICDrawing *)v10 setUnrotatedBoundsInCommandSpace:v29, v30, v31, v32];
        drawing::Rectangle::~Rectangle(v28);
      }
    }
  }

  else
  {
    v25 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [ICDrawing(ICDrawingPersistenceAdditions) initWithArchive:v9 version:v25 replicaID:?];
    }

    v10 = [(ICDrawing *)self initWithReplicaID:dCopy];
  }

  v26 = v10;

  return v26;
}

- (unsigned)saveToArchive:(void *)archive withPathData:(BOOL)data
{
  dataCopy = data;
  v44 = *MEMORY[0x277D85DE8];
  v7 = archive + 32;
  *(archive + 8) |= 1u;
  *(archive + 12) = 6;
  timestamp = [(ICDrawing *)self timestamp];
  *v7 |= 2u;
  v9 = *(archive + 5);
  if (!v9)
  {
    operator new();
  }

  [timestamp saveToArchive:v9];

  timestamp2 = [(ICDrawing *)self timestamp];
  sortedUUIDs = [timestamp2 sortedUUIDs];

  commands = [(ICDrawing *)self commands];
  google::protobuf::internal::RepeatedPtrFieldBase::Reserve(archive + 56, [commands count]);

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  commands2 = [(ICDrawing *)self commands];
  v14 = [commands2 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v14)
  {
    v15 = *v40;
    v16 = 1;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(commands2);
        }

        v18 = *(*(&v39 + 1) + 8 * i);
        v19 = *(archive + 17);
        v20 = *(archive + 16);
        if (v20 >= v19)
        {
          if (v19 == *(archive + 18))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(archive + 56, v19 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<drawing::Command>::New();
        }

        v21 = *(archive + 7);
        *(archive + 16) = v20 + 1;
        v22 = [v18 saveToArchive:*(v21 + 8 * v20) sortedUUIDs:sortedUUIDs withPathData:dataCopy];
        if (v16 <= v22)
        {
          v16 = v22;
        }
      }

      v14 = [commands2 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v14);
  }

  else
  {
    v16 = 1;
  }

  orientationTimestamp = [(ICDrawing *)self orientationTimestamp];
  v24 = orientationTimestamp == 0;

  if (!v24)
  {
    orientation = [(ICDrawing *)self orientation];
    *(archive + 8) |= 8u;
    *(archive + 13) = orientation;
    orientationTimestamp2 = [(ICDrawing *)self orientationTimestamp];
    [orientationTimestamp2 timeIntervalSinceReferenceDate];
    *(archive + 8) |= 0x10u;
    *(archive + 10) = v27;
  }

  [(ICDrawing *)self unrotatedBoundsInCommandSpace];
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  if (!CGRectIsNull(v45))
  {
    *(archive + 8) |= 0x20u;
    v32 = *(archive + 11);
    if (!v32)
    {
      operator new();
    }

    v33 = x;
    v34 = *(v32 + 32);
    v35 = y;
    *(v32 + 40) = v33;
    *(v32 + 44) = v35;
    v36 = width;
    v37 = height;
    *(v32 + 32) = v34 | 0xF;
    *(v32 + 48) = v36;
    *(v32 + 52) = v37;
  }

  return v16;
}

- (id)serializeWithPathData:(BOOL)data
{
  v5 = 0;
  v3 = [(ICDrawing *)self serializeWithPathData:data toVersion:&v5];

  return v3;
}

- (id)serializeWithPathData:(BOOL)data toVersion:(unsigned int *)version
{
  *version = [(ICDrawing *)self saveToArchive:v8 withPathData:data, drawing::Drawing::Drawing(v8)];
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:drawing::Drawing::ByteSize(v8)];
  mutableBytes = [v4 mutableBytes];
  v6 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v4 length]);
  google::protobuf::MessageLite::SerializeToArray(v8, mutableBytes, v6);
  drawing::Drawing::~Drawing(v8);

  return v4;
}

@end