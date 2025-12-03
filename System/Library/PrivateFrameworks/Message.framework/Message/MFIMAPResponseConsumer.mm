@interface MFIMAPResponseConsumer
- (void)addConsumer:(id)consumer forSection:(id)section;
- (void)appendData:(id)data forSection:(id)section;
- (void)dealloc;
- (void)done;
@end

@implementation MFIMAPResponseConsumer

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFIMAPResponseConsumer;
  [(MFIMAPResponseConsumer *)&v3 dealloc];
}

- (void)addConsumer:(id)consumer forSection:(id)section
{
  if (section)
  {
    sectionCopy = section;
  }

  else
  {
    sectionCopy = @"<null>";
  }

  consumersBySection = self->_consumersBySection;
  if (!consumersBySection)
  {
    consumersBySection = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_consumersBySection = consumersBySection;
  }

  if ([(NSMutableDictionary *)consumersBySection objectForKey:sectionCopy])
  {
    [MFIMAPResponseConsumer addConsumer:forSection:];
  }

  v8 = self->_consumersBySection;

  [(NSMutableDictionary *)v8 setObject:consumer forKey:sectionCopy];
}

- (void)appendData:(id)data forSection:(id)section
{
  if (section)
  {
    sectionCopy = section;
  }

  else
  {
    sectionCopy = @"<null>";
  }

  v6 = [(NSMutableDictionary *)self->_consumersBySection objectForKey:sectionCopy];
  if (!v6)
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [MFIMAPResponseConsumer appendData:sectionCopy forSection:v7];
    }
  }

  [v6 appendData:data];
}

- (void)done
{
  allValues = [(NSMutableDictionary *)self->_consumersBySection allValues];

  [allValues makeObjectsPerformSelector:sel_done];
}

- (void)appendData:(uint64_t)a1 forSection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B0389000, a2, OS_LOG_TYPE_DEBUG, "server returned data we don't have a consumer for, might be expected for section %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end