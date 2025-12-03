@interface JFXSharedMediaDataReaderManager
- (JFXARMetadataMediaReader)sharedARMetadataReader;
- (JFXARMetadataMediaReader)weakSharedARMetadataReader;
- (JFXDepthDataMediaReader)sharedDepthDataReader;
- (JFXDepthDataMediaReader)weakSharedDepthDataReader;
- (JFXSharedMediaDataReaderManager)initWithPlayableElement:(id)element;
- (void)sharedARMetadataReader;
- (void)sharedDepthDataReader;
@end

@implementation JFXSharedMediaDataReaderManager

- (JFXSharedMediaDataReaderManager)initWithPlayableElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = JFXSharedMediaDataReaderManager;
  v6 = [(JFXSharedMediaDataReaderManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playableElement, element);
  }

  return v7;
}

- (JFXARMetadataMediaReader)sharedARMetadataReader
{
  weakSharedARMetadataReader = [(JFXSharedMediaDataReaderManager *)self weakSharedARMetadataReader];
  if (weakSharedARMetadataReader)
  {
    v4 = JFXLog_DebugMediaDataReader();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [JFXSharedMediaDataReaderManager sharedARMetadataReader];
    }

    v5 = weakSharedARMetadataReader;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    playableElement = [(JFXSharedMediaDataReaderManager *)self playableElement];
    uuid = [playableElement uuid];
    v9 = [v6 stringWithFormat:@"%@_%@", @"sharedARMetadataReader", uuid];

    v10 = +[JFXMediaDataReaderFactory sharedInstance];
    playableElement2 = [(JFXSharedMediaDataReaderManager *)self playableElement];
    v5 = [v10 createARMetadataReaderWithCreationAttributesProvider:playableElement2 name:v9];

    if (v5)
    {
      [(JFXSharedMediaDataReaderManager *)self setWeakSharedARMetadataReader:v5];
      v12 = JFXLog_DebugMediaDataReader();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [JFXSharedMediaDataReaderManager sharedARMetadataReader];
      }
    }
  }

  return v5;
}

- (JFXDepthDataMediaReader)sharedDepthDataReader
{
  weakSharedDepthDataReader = [(JFXSharedMediaDataReaderManager *)self weakSharedDepthDataReader];
  if (weakSharedDepthDataReader)
  {
    v4 = JFXLog_DebugMediaDataReader();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [JFXSharedMediaDataReaderManager sharedDepthDataReader];
    }

    v5 = weakSharedDepthDataReader;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    playableElement = [(JFXSharedMediaDataReaderManager *)self playableElement];
    uuid = [playableElement uuid];
    v9 = [v6 stringWithFormat:@"%@_%@", @"sharedDepthDataReader", uuid];

    v10 = +[JFXMediaDataReaderFactory sharedInstance];
    playableElement2 = [(JFXSharedMediaDataReaderManager *)self playableElement];
    v5 = [v10 createDepthDataReaderWithCreationAttributesProvider:playableElement2 name:v9];

    if (v5)
    {
      [(JFXSharedMediaDataReaderManager *)self setWeakSharedDepthDataReader:v5];
      v12 = JFXLog_DebugMediaDataReader();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [JFXSharedMediaDataReaderManager sharedARMetadataReader];
      }
    }
  }

  return v5;
}

- (JFXARMetadataMediaReader)weakSharedARMetadataReader
{
  WeakRetained = objc_loadWeakRetained(&self->_weakSharedARMetadataReader);

  return WeakRetained;
}

- (JFXDepthDataMediaReader)weakSharedDepthDataReader
{
  WeakRetained = objc_loadWeakRetained(&self->_weakSharedDepthDataReader);

  return WeakRetained;
}

- (void)sharedARMetadataReader
{
  OUTLINED_FUNCTION_3();
  v2 = [OUTLINED_FUNCTION_2_2(v0 v1)];
  uuid = [v2 uuid];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_2(&dword_242A3B000, v4, v5, "created shared DepthReader reader %@ for playable element id %@", v6, v7, v8, v9, v10);
}

- (void)sharedDepthDataReader
{
  OUTLINED_FUNCTION_3();
  v2 = [OUTLINED_FUNCTION_2_2(v0 v1)];
  uuid = [v2 uuid];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_2(&dword_242A3B000, v4, v5, "return existing shared DepthReader %@ for playable element id %@", v6, v7, v8, v9, v10);
}

@end