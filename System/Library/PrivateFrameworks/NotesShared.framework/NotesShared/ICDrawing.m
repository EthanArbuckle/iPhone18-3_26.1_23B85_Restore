@interface ICDrawing
+ (CGAffineTransform)defaultSizeOrientationTransform:(SEL)a3;
+ (CGAffineTransform)orientationTransform:(SEL)a3 size:(int64_t)a4;
+ (CGSize)defaultPixelSize;
+ (CGSize)defaultSize;
+ (CGSize)fullSize:(CGSize)result forOrientation:(int64_t)a4;
- (BOOL)canChangeTransientOrientation;
- (BOOL)setTransientOrientation:(int64_t)a3;
- (CGAffineTransform)orientationTransform;
- (CGRect)bounds;
- (CGRect)calculateCommandBounds;
- (CGRect)commandBounds;
- (CGRect)fullBounds;
- (CGRect)unrotatedBoundsInCommandSpace;
- (CGSize)fullSize;
- (CGSize)unrotatedSize;
- (ICDrawing)init;
- (ICDrawing)initWithArchive:(const void *)a3 version:(unsigned int)a4 replicaID:(id)a5;
- (ICDrawing)initWithCommands:(id)a3 fromDrawing:(id)a4;
- (ICDrawing)initWithData:(id)a3 version:(unsigned int)a4 replicaID:(id)a5;
- (ICDrawing)initWithDrawing:(id)a3;
- (ICDrawing)initWithReplicaID:(id)a3;
- (ICDrawingCommandID)commandIDForNewCommand;
- (NSOrderedSet)visibleCommands;
- (id)copyWithZone:(_NSZone *)a3;
- (id)insertNewTestCommand;
- (id)serializeWithPathData:(BOOL)a3;
- (id)serializeWithPathData:(BOOL)a3 toVersion:(unsigned int *)a4;
- (id)setCommand:(id)a3 hidden:(BOOL)a4;
- (id)visibleCommandForInsertingCommand:(id)a3;
- (int64_t)imageOrientation;
- (unint64_t)mergeWithDrawing:(id)a3;
- (unsigned)saveToArchive:(void *)a3 withPathData:(BOOL)a4;
- (void)addNewCommand:(id)a3;
- (void)invalidateBounds;
- (void)setCommandIDForInsertion:(id)a3;
- (void)setOrientation:(int64_t)a3;
- (void)takeOrientationFrom:(id)a3;
@end

@implementation ICDrawing

- (ICDrawing)init
{
  [(ICDrawing *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICDrawing)initWithReplicaID:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = ICDrawing;
  v6 = [(ICDrawing *)&v18 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
    commands = v6->_commands;
    v6->_commands = v7;

    objc_storeStrong(&v6->_replicaUUID, a3);
    v9 = [[ICTTVectorMultiTimestamp alloc] initWithCapacity:2];
    timestamp = v6->_timestamp;
    v6->_timestamp = v9;

    v6->_orientation = 0;
    v11 = [MEMORY[0x277CBEAA8] distantPast];
    orientationTimestamp = v6->_orientationTimestamp;
    v6->_orientationTimestamp = v11;

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

- (ICDrawing)initWithDrawing:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = ICDrawing;
  v5 = [(ICDrawing *)&v27 init];
  if (v5)
  {
    v6 = [v4 commands];
    v7 = [v6 mutableCopy];
    commands = v5->_commands;
    v5->_commands = v7;

    v9 = [v4 replicaUUID];
    replicaUUID = v5->_replicaUUID;
    v5->_replicaUUID = v9;

    v11 = [v4 timestamp];
    v12 = [v11 copy];
    timestamp = v5->_timestamp;
    v5->_timestamp = v12;

    v5->_orientation = [v4 orientation];
    v14 = [v4 orientationTimestamp];
    orientationTimestamp = v5->_orientationTimestamp;
    v5->_orientationTimestamp = v14;

    [v4 unrotatedBoundsInCommandSpace];
    v5->_unrotatedBoundsInCommandSpace.origin.x = v16;
    v5->_unrotatedBoundsInCommandSpace.origin.y = v17;
    v5->_unrotatedBoundsInCommandSpace.size.width = v18;
    v5->_unrotatedBoundsInCommandSpace.size.height = v19;
    [v4 commandBounds];
    v5->_commandBounds.origin.x = v20;
    v5->_commandBounds.origin.y = v21;
    v5->_commandBounds.size.width = v22;
    v5->_commandBounds.size.height = v23;
    [v4 unrotatedSize];
    v5->_unrotatedSize.width = v24;
    v5->_unrotatedSize.height = v25;
  }

  return v5;
}

- (ICDrawing)initWithCommands:(id)a3 fromDrawing:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 replicaUUID];
  v9 = [(ICDrawing *)self initWithReplicaID:v8];

  if (v9)
  {
    v10 = [v6 copy];
    commands = v9->_commands;
    v9->_commands = v10;

    v12 = [v7 timestamp];
    v13 = [v12 copy];
    timestamp = v9->_timestamp;
    v9->_timestamp = v13;

    v9->_orientation = [v7 orientation];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ICDrawing allocWithZone:a3];

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
      v5 = [(ICDrawing *)self commands];
      v6 = [v5 mutableCopy];
      v7 = self->_visibleCommands;
      self->_visibleCommands = v6;

      [(NSMutableOrderedSet *)self->_visibleCommands removeObjectsAtIndexes:v4];
    }

    else
    {
      v8 = [(ICDrawing *)self commands];
      v9 = [v8 mutableCopy];
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
  v7 = [(ICDrawing *)self visibleCommands];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v25 + 1) + 8 * v10) data];
        [v11 bounds];
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
      v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
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

- (void)takeOrientationFrom:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    self->_orientation = [v4 orientation];
    v5 = [v7 orientationTimestamp];
    orientationTimestamp = self->_orientationTimestamp;
    self->_orientationTimestamp = v5;

    v4 = v7;
  }
}

- (void)setOrientation:(int64_t)a3
{
  if (self->_orientation != a3)
  {
    self->_orientation = a3;
    v4 = [MEMORY[0x277CBEAA8] date];
    [(ICDrawing *)self setOrientationTimestamp:?];
  }
}

- (BOOL)canChangeTransientOrientation
{
  v3 = [(ICDrawing *)self commands];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(ICDrawing *)self orientationTimestamp];
    v6 = [MEMORY[0x277CBEAA8] distantPast];
    v4 = [v5 isEqualToDate:v6];
  }

  return v4;
}

- (BOOL)setTransientOrientation:(int64_t)a3
{
  v5 = [(ICDrawing *)self canChangeTransientOrientation];
  if (v5)
  {
    self->_orientation = a3;
  }

  return v5;
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
  v5 = [(ICDrawing *)self timestamp];
  v6 = [(ICDrawing *)self replicaUUID];
  v7 = [v5 clockElementForUUID:v6 atIndex:0];

  retstr->clock = [v7 clock];
  retstr->replicaUUID = [(ICDrawing *)self replicaUUID];
  retstr->subclock = [v7 subclock] + 1;
  v8 = [(ICDrawing *)self commands];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(ICDrawing *)self commands];
    v11 = [v10 lastObject];

    v12 = [v11 data];
    v13 = v12;
    if (v12)
    {
      [v12 commandID];
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
      v15 = [(ICDrawing *)self replicaUUID];
      retstr->clock = v14;
      replicaUUID = retstr->replicaUUID;
      retstr->replicaUUID = v15;

      retstr->subclock = 0;
      if (ICDrawingCommandID::operator<=(retstr, &v21))
      {
        v17 = v21;
        v18 = [(ICDrawing *)self replicaUUID];
        retstr->clock = v17 + 1;
        v19 = retstr->replicaUUID;
        retstr->replicaUUID = v18;

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

- (void)setCommandIDForInsertion:(id)a3
{
  v4 = a3;
  [(ICDrawing *)self commandIDForNewCommand];
  v6 = v9;
  v5 = v10;
  v7 = v5;
  v8 = v11;
  if (v4)
  {
    [v4 setCommandID:&v6];
  }

  else
  {
  }
}

- (id)visibleCommandForInsertingCommand:(id)a3
{
  v4 = a3;
  v5 = [ICDrawingCommand alloc];
  v6 = [(ICDrawing *)self replicaUUID];
  if (v5)
  {
    v5 = [(ICDrawingCommand *)v5 initWithCommand:v4 hidden:0 timestamp:v6, 0];
  }

  else
  {
  }

  return v5;
}

- (void)addNewCommand:(id)a3
{
  v4 = a3;
  v5 = [(ICDrawing *)self orientationTimestamp];
  v6 = [MEMORY[0x277CBEAA8] distantPast];
  v7 = [v5 isEqualToDate:v6];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEAA8] date];
    [(ICDrawing *)self setOrientationTimestamp:v8];
  }

  [(NSMutableOrderedSet *)self->_commands addObject:v4];
  if (self->_visibleCommands && ([v4 hidden] & 1) == 0)
  {
    [(NSMutableOrderedSet *)self->_visibleCommands addObject:v4];
  }

  v9 = [(ICDrawing *)self timestamp];
  v10 = [v4 data];
  v11 = v10;
  if (v10)
  {
    [v10 commandID];
    v12 = v20;
  }

  else
  {
    v12 = 0;
    v21 = 0;
  }

  v13 = [v4 data];
  v14 = v13;
  if (v13)
  {
    [v13 commandID];
    v15 = v19;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v18 = 0;
  }

  v16 = [(ICDrawing *)self replicaUUID];
  [v9 setClock:v12 subclock:v15 forUUID:v16 atIndex:0];

  [(ICDrawing *)self invalidateBounds];
}

- (id)setCommand:(id)a3 hidden:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ICDrawing *)self commands];
  v8 = [v7 indexOfObject:v6];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICDrawing setCommand:v9 hidden:?];
    }

    v10 = v6;
    goto LABEL_11;
  }

  v11 = [(ICDrawing *)self commands];
  v12 = [v11 objectAtIndexedSubscript:v8];

  if ([v12 hidden] == v4)
  {
    v10 = v12;
LABEL_11:
    v12 = v10;
    v29 = v10;
    goto LABEL_14;
  }

  v13 = [(ICDrawing *)self timestamp];
  v14 = [(ICDrawing *)self replicaUUID];
  v15 = [v13 clockElementForUUID:v14 atIndex:1];

  v16 = [v12 timestamp];
  v18 = v17;
  v19 = [(ICDrawing *)self replicaUUID];

  v20 = [v15 clock];
  if (v18 <= v20)
  {
    v18 = v20;
  }

  v21 = [(ICDrawing *)self timestamp];
  v22 = [(ICDrawing *)self replicaUUID];
  v23 = v18 + 1;
  [v21 setClock:v23 forUUID:v22 atIndex:1];

  visibleCommands = self->_visibleCommands;
  self->_visibleCommands = 0;

  v25 = [ICDrawingCommand alloc];
  v26 = [v12 data];
  v27 = v19;
  v28 = v27;
  if (v25)
  {
    v29 = [(ICDrawingCommand *)v25 initWithCommand:v26 hidden:v4 timestamp:v27, v23];
  }

  else
  {

    v29 = 0;
  }

  [(NSMutableOrderedSet *)self->_commands replaceObjectAtIndex:v8 withObject:v29];
LABEL_14:

  return v29;
}

- (unint64_t)mergeWithDrawing:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v51 = a3;
  v4 = [v51 orientationTimestamp];
  v5 = [(ICDrawing *)self orientationTimestamp];
  v6 = [v4 compare:v5];

  if (v6 == -1 || ([v51 orientationTimestamp], v7 = objc_claimAutoreleasedReturnValue(), orientationTimestamp = self->_orientationTimestamp, self->_orientationTimestamp = v7, orientationTimestamp, orientation = self->_orientation, orientation == objc_msgSend(v51, "orientation")))
  {
    v10 = 1;
  }

  else
  {
    self->_orientation = [v51 orientation];
    v10 = 2;
  }

  v11 = [(ICDrawing *)self timestamp];
  v12 = [v51 timestamp];
  v13 = [v11 compareTo:v12];

  if (v13)
  {
    [v51 unrotatedBoundsInCommandSpace];
    if (!CGRectIsNull(v59))
    {
      [(ICDrawing *)self unrotatedBoundsInCommandSpace];
      IsNull = CGRectIsNull(v60);
      v15 = v13 == 1 || IsNull;
      if (v15 == 1)
      {
        [v51 unrotatedBoundsInCommandSpace];
      }

      else
      {
        [(ICDrawing *)self unrotatedBoundsInCommandSpace];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        [v51 unrotatedBoundsInCommandSpace];
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
    obj = [v51 commands];
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
            v40 = [v38 timestamp];
            v42 = v41;
            v43 = [v35 timestamp];
            v45 = v43;
            if (v42 >= v44)
            {
              if (v42 != v44)
              {

                goto LABEL_28;
              }

              v46 = [v40 TTCompare:v43] == -1;

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
    v47 = [(ICDrawing *)self timestamp];
    v48 = [v51 timestamp];
    [v47 mergeWithTimestamp:v48];

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

+ (CGSize)fullSize:(CGSize)result forOrientation:(int64_t)a4
{
  if (a4 >= 2)
  {
    height = result.height;
  }

  else
  {
    height = result.width;
  }

  if (a4 >= 2)
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

+ (CGAffineTransform)defaultSizeOrientationTransform:(SEL)a3
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

+ (CGAffineTransform)orientationTransform:(SEL)a3 size:(int64_t)a4
{
  v5 = MEMORY[0x277CBF2C0];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  switch(a4)
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

- (ICDrawing)initWithData:(id)a3 version:(unsigned int)a4 replicaID:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  if (!v8)
  {
    v12 = [(ICDrawing *)self initWithReplicaID:v9];
    goto LABEL_5;
  }

  drawing::Drawing::Drawing(v16);
  v10 = [v8 bytes];
  v11 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v8 length]);
  if (google::protobuf::MessageLite::ParseFromArray(v16, v10, v11))
  {
    v12 = [(ICDrawing *)self initWithArchive:v16 version:v6 replicaID:v9];
    drawing::Drawing::~Drawing(v16);
LABEL_5:
    self = v12;
    v13 = self;
    goto LABEL_9;
  }

  v14 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [ICDrawing(ICDrawingPersistenceAdditions) initWithData:v14 version:? replicaID:?];
  }

  drawing::Drawing::~Drawing(v16);
  v13 = 0;
LABEL_9:

  return v13;
}

- (ICDrawing)initWithArchive:(const void *)a3 version:(unsigned int)a4 replicaID:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v9 = (a3 + 48);
  if ((*(a3 + 32) & 1) != 0 && *(a3 + 12) == 6)
  {
    v10 = [(ICDrawing *)self initWithReplicaID:v8];
    if (v10)
    {
      v11 = [ICTTVectorMultiTimestamp alloc];
      v12 = v11;
      v13 = *(a3 + 5);
      if (!v13)
      {
        v13 = *(drawing::Drawing::default_instance(v11) + 40);
      }

      v14 = [(ICTTVectorMultiTimestamp *)v12 initWithArchive:v13 andCapacity:2];
      [(ICDrawing *)v10 setTimestamp:v14];

      v15 = [(ICDrawing *)v10 timestamp];
      v16 = [v15 sortedUUIDs];

      v18 = *(a3 + 16);
      if (v18)
      {
        for (i = 0; i != v18; ++i)
        {
          v20 = [[ICDrawingCommand alloc] initWithArchive:google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<drawing::Command>::TypeHandler>(a3 + 56 version:i) sortedUUIDs:v5, v16];
          if (v20)
          {
            v21 = [(ICDrawing *)v10 mutableCommands];
            [v21 addObject:v20];
          }
        }
      }

      v22 = *(a3 + 8);
      if ((~v22 & 0x18) == 0)
      {
        [(ICDrawing *)v10 setOrientation:*(a3 + 13)];
        v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(a3 + 10)];
        [(ICDrawing *)v10 setOrientationTimestamp:v23];

        v22 = *(a3 + 8);
      }

      if ((v22 & 0x20) != 0)
      {
        v24 = *(a3 + 11);
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

    v10 = [(ICDrawing *)self initWithReplicaID:v8];
  }

  v26 = v10;

  return v26;
}

- (unsigned)saveToArchive:(void *)a3 withPathData:(BOOL)a4
{
  v4 = a4;
  v44 = *MEMORY[0x277D85DE8];
  v7 = a3 + 32;
  *(a3 + 8) |= 1u;
  *(a3 + 12) = 6;
  v8 = [(ICDrawing *)self timestamp];
  *v7 |= 2u;
  v9 = *(a3 + 5);
  if (!v9)
  {
    operator new();
  }

  [v8 saveToArchive:v9];

  v10 = [(ICDrawing *)self timestamp];
  v11 = [v10 sortedUUIDs];

  v12 = [(ICDrawing *)self commands];
  google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3 + 56, [v12 count]);

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = [(ICDrawing *)self commands];
  v14 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v39 + 1) + 8 * i);
        v19 = *(a3 + 17);
        v20 = *(a3 + 16);
        if (v20 >= v19)
        {
          if (v19 == *(a3 + 18))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3 + 56, v19 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<drawing::Command>::New();
        }

        v21 = *(a3 + 7);
        *(a3 + 16) = v20 + 1;
        v22 = [v18 saveToArchive:*(v21 + 8 * v20) sortedUUIDs:v11 withPathData:v4];
        if (v16 <= v22)
        {
          v16 = v22;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v14);
  }

  else
  {
    v16 = 1;
  }

  v23 = [(ICDrawing *)self orientationTimestamp];
  v24 = v23 == 0;

  if (!v24)
  {
    v25 = [(ICDrawing *)self orientation];
    *(a3 + 8) |= 8u;
    *(a3 + 13) = v25;
    v26 = [(ICDrawing *)self orientationTimestamp];
    [v26 timeIntervalSinceReferenceDate];
    *(a3 + 8) |= 0x10u;
    *(a3 + 10) = v27;
  }

  [(ICDrawing *)self unrotatedBoundsInCommandSpace];
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  if (!CGRectIsNull(v45))
  {
    *(a3 + 8) |= 0x20u;
    v32 = *(a3 + 11);
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

- (id)serializeWithPathData:(BOOL)a3
{
  v5 = 0;
  v3 = [(ICDrawing *)self serializeWithPathData:a3 toVersion:&v5];

  return v3;
}

- (id)serializeWithPathData:(BOOL)a3 toVersion:(unsigned int *)a4
{
  *a4 = [(ICDrawing *)self saveToArchive:v8 withPathData:a3, drawing::Drawing::Drawing(v8)];
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:drawing::Drawing::ByteSize(v8)];
  v5 = [v4 mutableBytes];
  v6 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v4 length]);
  google::protobuf::MessageLite::SerializeToArray(v8, v5, v6);
  drawing::Drawing::~Drawing(v8);

  return v4;
}

@end