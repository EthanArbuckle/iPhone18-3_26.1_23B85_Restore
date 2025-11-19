@interface JFXCompositionExporter
- (JFXCompositionExporter)initWithClipsDataSource:(id)a3;
- (double)timeElapsedDuringExport;
- (unint64_t)estimatedFileSizeForDuration:(int)a3 frameRate:(double)a4 preset:(id)a5;
- (unsigned)parentCode;
- (void)cancelWithStatus:(int64_t)a3;
- (void)dealloc;
- (void)didFinishExport:(int64_t)a3;
- (void)exportAnalyticsForSessionBegin;
- (void)exportAnalyticsForSessionCompleteWithStatus:(int64_t)a3 exportMachDuration:(unint64_t)a4;
- (void)exportProgressedTo:(float)a3;
- (void)setParentCode:(unsigned int)a3;
- (void)startWithPresets:(id)a3 toFilePath:(id)a4 poster:(id)a5;
- (void)tearDown;
@end

@implementation JFXCompositionExporter

- (JFXCompositionExporter)initWithClipsDataSource:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = JFXCompositionExporter;
  v6 = [(JFXCompositionExporter *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clipsDataSource, a3);
    v8 = objc_alloc([objc_opt_class() compositionClass]);
    v9 = [(JFXCompositionExporter *)v7 clipsDataSource];
    v10 = [v8 initWithClipsDataSource:v9];
    composition = v7->_composition;
    v7->_composition = v10;

    [v5 renderSize];
    [(JFXComposition *)v7->_composition setViewSize:?];
    [(JFXComposition *)v7->_composition applyExportProperties];
  }

  return v7;
}

- (void)setParentCode:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(JFXCompositionExporter *)self composition];
  [v4 setParentCode:v3];
}

- (unsigned)parentCode
{
  v2 = [(JFXCompositionExporter *)self composition];
  v3 = [v2 parentCode];

  return v3;
}

- (unint64_t)estimatedFileSizeForDuration:(int)a3 frameRate:(double)a4 preset:(id)a5
{
  v6 = *&a3;
  v8 = a5;
  v9 = [(JFXCompositionExporter *)self composition];
  [v9 viewSize];
  v12 = [JFXExportController estimatedFileSizeForDuration:v6 frameRate:v8 preset:a4 size:v10, v11];

  return v12;
}

- (void)startWithPresets:(id)a3 toFilePath:(id)a4 poster:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = MEMORY[0x277CBEAA8];
  v10 = a5;
  v11 = a3;
  v12 = [v9 date];
  [(JFXCompositionExporter *)self setExportStartTime:v12];

  v13 = JFXLog_export();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [(JFXCompositionExporter *)self exportStartTime];
    v20 = 138412546;
    v21 = v8;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&dword_242A3B000, v13, OS_LOG_TYPE_INFO, "Starting export to %@ at %@", &v20, 0x16u);
  }

  v15 = [JFXReaderWriterExportController alloc];
  v16 = [(JFXCompositionExporter *)self composition];
  v17 = [(JFXExportController *)v15 initWithWithComposition:v16 presets:v11 toFile:v8 poster:v10 delegate:self];

  [(JFXCompositionExporter *)self setExportController:v17];
  v18 = [(JFXCompositionExporter *)self exportController];
  [v18 beginAsynchronousExport];

  v19 = [(JFXCompositionExporter *)self exportController];
  [v19 startProgressTimer];
}

- (void)tearDown
{
  [(JFXCompositionExporter *)self setComposition:0];

  [(JFXCompositionExporter *)self setExportController:0];
}

- (void)cancelWithStatus:(int64_t)a3
{
  v5 = [(JFXCompositionExporter *)self exportController];
  [v5 cancelExportWithStatus:a3];

  [(JFXCompositionExporter *)self tearDown];
}

- (void)dealloc
{
  [(JFXCompositionExporter *)self tearDown];
  v3.receiver = self;
  v3.super_class = JFXCompositionExporter;
  [(JFXCompositionExporter *)&v3 dealloc];
}

- (double)timeElapsedDuringExport
{
  v3 = [(JFXCompositionExporter *)self exportEndTime];
  v4 = [(JFXCompositionExporter *)self exportStartTime];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

- (void)exportProgressedTo:(float)a3
{
  v5 = [(JFXCompositionExporter *)self delegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(JFXCompositionExporter *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v10 = [(JFXCompositionExporter *)self delegate];
      *&v9 = a3;
      [v10 exportProgressedTo:v9];
    }
  }
}

- (void)didFinishExport:(int64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEAA8] date];
  [(JFXCompositionExporter *)self setExportEndTime:v5];

  v6 = JFXLog_export();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(JFXCompositionExporter *)self exportEndTime];
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&dword_242A3B000, v6, OS_LOG_TYPE_INFO, "Finished exporting at %@", &v13, 0xCu);
  }

  v8 = [(JFXCompositionExporter *)self delegate];
  if (v8)
  {
    v9 = v8;
    v10 = [(JFXCompositionExporter *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(JFXCompositionExporter *)self delegate];
      [v12 didFinishExport:a3];
    }
  }

  [(JFXCompositionExporter *)self tearDown];
}

- (void)exportAnalyticsForSessionBegin
{
  v3 = [(JFXCompositionExporter *)self delegate];
  if (v3)
  {
    v4 = v3;
    v5 = [(JFXCompositionExporter *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(JFXCompositionExporter *)self delegate];
      [v7 exportAnalyticsForSessionBegin];
    }
  }
}

- (void)exportAnalyticsForSessionCompleteWithStatus:(int64_t)a3 exportMachDuration:(unint64_t)a4
{
  v7 = [(JFXCompositionExporter *)self delegate];
  if (v7)
  {
    v8 = v7;
    v9 = [(JFXCompositionExporter *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(JFXCompositionExporter *)self delegate];
      [v11 exportAnalyticsForSessionCompleteWithStatus:a3 exportMachDuration:a4];
    }
  }
}

@end