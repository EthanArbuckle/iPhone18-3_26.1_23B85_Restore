@interface JFXCompositionExporter
- (JFXCompositionExporter)initWithClipsDataSource:(id)source;
- (double)timeElapsedDuringExport;
- (unint64_t)estimatedFileSizeForDuration:(int)duration frameRate:(double)rate preset:(id)preset;
- (unsigned)parentCode;
- (void)cancelWithStatus:(int64_t)status;
- (void)dealloc;
- (void)didFinishExport:(int64_t)export;
- (void)exportAnalyticsForSessionBegin;
- (void)exportAnalyticsForSessionCompleteWithStatus:(int64_t)status exportMachDuration:(unint64_t)duration;
- (void)exportProgressedTo:(float)to;
- (void)setParentCode:(unsigned int)code;
- (void)startWithPresets:(id)presets toFilePath:(id)path poster:(id)poster;
- (void)tearDown;
@end

@implementation JFXCompositionExporter

- (JFXCompositionExporter)initWithClipsDataSource:(id)source
{
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = JFXCompositionExporter;
  v6 = [(JFXCompositionExporter *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clipsDataSource, source);
    v8 = objc_alloc([objc_opt_class() compositionClass]);
    clipsDataSource = [(JFXCompositionExporter *)v7 clipsDataSource];
    v10 = [v8 initWithClipsDataSource:clipsDataSource];
    composition = v7->_composition;
    v7->_composition = v10;

    [sourceCopy renderSize];
    [(JFXComposition *)v7->_composition setViewSize:?];
    [(JFXComposition *)v7->_composition applyExportProperties];
  }

  return v7;
}

- (void)setParentCode:(unsigned int)code
{
  v3 = *&code;
  composition = [(JFXCompositionExporter *)self composition];
  [composition setParentCode:v3];
}

- (unsigned)parentCode
{
  composition = [(JFXCompositionExporter *)self composition];
  parentCode = [composition parentCode];

  return parentCode;
}

- (unint64_t)estimatedFileSizeForDuration:(int)duration frameRate:(double)rate preset:(id)preset
{
  v6 = *&duration;
  presetCopy = preset;
  composition = [(JFXCompositionExporter *)self composition];
  [composition viewSize];
  v12 = [JFXExportController estimatedFileSizeForDuration:v6 frameRate:presetCopy preset:rate size:v10, v11];

  return v12;
}

- (void)startWithPresets:(id)presets toFilePath:(id)path poster:(id)poster
{
  v24 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v9 = MEMORY[0x277CBEAA8];
  posterCopy = poster;
  presetsCopy = presets;
  date = [v9 date];
  [(JFXCompositionExporter *)self setExportStartTime:date];

  v13 = JFXLog_export();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    exportStartTime = [(JFXCompositionExporter *)self exportStartTime];
    v20 = 138412546;
    v21 = pathCopy;
    v22 = 2112;
    v23 = exportStartTime;
    _os_log_impl(&dword_242A3B000, v13, OS_LOG_TYPE_INFO, "Starting export to %@ at %@", &v20, 0x16u);
  }

  v15 = [JFXReaderWriterExportController alloc];
  composition = [(JFXCompositionExporter *)self composition];
  v17 = [(JFXExportController *)v15 initWithWithComposition:composition presets:presetsCopy toFile:pathCopy poster:posterCopy delegate:self];

  [(JFXCompositionExporter *)self setExportController:v17];
  exportController = [(JFXCompositionExporter *)self exportController];
  [exportController beginAsynchronousExport];

  exportController2 = [(JFXCompositionExporter *)self exportController];
  [exportController2 startProgressTimer];
}

- (void)tearDown
{
  [(JFXCompositionExporter *)self setComposition:0];

  [(JFXCompositionExporter *)self setExportController:0];
}

- (void)cancelWithStatus:(int64_t)status
{
  exportController = [(JFXCompositionExporter *)self exportController];
  [exportController cancelExportWithStatus:status];

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
  exportEndTime = [(JFXCompositionExporter *)self exportEndTime];
  exportStartTime = [(JFXCompositionExporter *)self exportStartTime];
  [exportEndTime timeIntervalSinceDate:exportStartTime];
  v6 = v5;

  return v6;
}

- (void)exportProgressedTo:(float)to
{
  delegate = [(JFXCompositionExporter *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(JFXCompositionExporter *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate3 = [(JFXCompositionExporter *)self delegate];
      *&v9 = to;
      [delegate3 exportProgressedTo:v9];
    }
  }
}

- (void)didFinishExport:(int64_t)export
{
  v15 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  [(JFXCompositionExporter *)self setExportEndTime:date];

  v6 = JFXLog_export();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    exportEndTime = [(JFXCompositionExporter *)self exportEndTime];
    v13 = 138412290;
    v14 = exportEndTime;
    _os_log_impl(&dword_242A3B000, v6, OS_LOG_TYPE_INFO, "Finished exporting at %@", &v13, 0xCu);
  }

  delegate = [(JFXCompositionExporter *)self delegate];
  if (delegate)
  {
    v9 = delegate;
    delegate2 = [(JFXCompositionExporter *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate3 = [(JFXCompositionExporter *)self delegate];
      [delegate3 didFinishExport:export];
    }
  }

  [(JFXCompositionExporter *)self tearDown];
}

- (void)exportAnalyticsForSessionBegin
{
  delegate = [(JFXCompositionExporter *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    delegate2 = [(JFXCompositionExporter *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate3 = [(JFXCompositionExporter *)self delegate];
      [delegate3 exportAnalyticsForSessionBegin];
    }
  }
}

- (void)exportAnalyticsForSessionCompleteWithStatus:(int64_t)status exportMachDuration:(unint64_t)duration
{
  delegate = [(JFXCompositionExporter *)self delegate];
  if (delegate)
  {
    v8 = delegate;
    delegate2 = [(JFXCompositionExporter *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate3 = [(JFXCompositionExporter *)self delegate];
      [delegate3 exportAnalyticsForSessionCompleteWithStatus:status exportMachDuration:duration];
    }
  }
}

@end