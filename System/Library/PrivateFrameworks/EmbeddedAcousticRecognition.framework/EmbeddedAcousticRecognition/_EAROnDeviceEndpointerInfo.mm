@interface _EAROnDeviceEndpointerInfo
- (_EAROnDeviceEndpointerInfo)initWithConfig:(id)config;
- (id).cxx_construct;
- (id)getEndpointerExtraDelayFrequencyForTask:(id)task;
- (id)getEndpointerThresholdForClientModelVersion:(unsigned int)version task:(id)task;
@end

@implementation _EAROnDeviceEndpointerInfo

- (_EAROnDeviceEndpointerInfo)initWithConfig:(id)config
{
  configCopy = config;
  v13.receiver = self;
  v13.super_class = _EAROnDeviceEndpointerInfo;
  v5 = [(_EAROnDeviceEndpointerInfo *)&v13 init];
  if (v5)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [defaultManager fileExistsAtPath:configCopy];

    if (v7)
    {
      quasar::SystemConfig::SystemConfig(v12);
    }

    v9 = EARLogger::QuasarOSLogger(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(_EAROnDeviceEndpointerInfo *)configCopy initWithConfig:v9];
    }

    v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)getEndpointerThresholdForClientModelVersion:(unsigned int)version task:(id)task
{
  taskCopy = task;
  v7 = taskCopy;
  left = self->_hybridClientConfigs.hybridEndpointerThresholds.__tree_.__end_node_.__left_;
  p_end_node = &self->_hybridClientConfigs.hybridEndpointerThresholds.__tree_.__end_node_;
  v8 = left;
  if (!left)
  {
    goto LABEL_8;
  }

  v11 = p_end_node;
  do
  {
    if (SLODWORD(v8[4].__left_) >= version)
    {
      v11 = v8;
    }

    v8 = v8[SLODWORD(v8[4].__left_) < version].__left_;
  }

  while (v8);
  if (v11 == p_end_node || SLODWORD(v11[4].__left_) > version)
  {
    goto LABEL_8;
  }

  if (taskCopy)
  {
    [taskCopy ear_toString];
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v18 = 0;
  }

  v15 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v11[5], __p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (&v11[6] != v15)
  {
LABEL_24:
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:*(v15 + 56)];
    goto LABEL_11;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "*");
  taskCopy = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v11[5], __p);
  v16 = taskCopy;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 != v16)
  {
    v15 = v16;
    goto LABEL_24;
  }

LABEL_8:
  v12 = EARLogger::QuasarOSLogger(taskCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [_EAROnDeviceEndpointerInfo getEndpointerThresholdForClientModelVersion:version task:v12];
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)getEndpointerExtraDelayFrequencyForTask:(id)task
{
  taskCopy = task;
  v5 = taskCopy;
  if (taskCopy)
  {
    [taskCopy ear_toString];
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v13 = 0;
  }

  v6 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&self->_hybridClientConfigs.hybridEndpointerExtraDelayFrequency, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (&self->_hybridClientConfigs.hybridEndpointerExtraDelayFrequency.__tree_.__end_node_ != v6)
  {
    goto LABEL_14;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "*");
  v7 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&self->_hybridClientConfigs.hybridEndpointerExtraDelayFrequency, __p);
  v8 = v7;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 != v8)
  {
    v6 = v8;
LABEL_14:
    v10 = [MEMORY[0x1E696AD98] numberWithInt:*(v6 + 56)];
    goto LABEL_15;
  }

  v9 = EARLogger::QuasarOSLogger(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(_EAROnDeviceEndpointerInfo *)v5 getEndpointerExtraDelayFrequencyForTask:v9];
  }

  v10 = 0;
LABEL_15:

  return v10;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  *(self + 6) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  *(self + 4) = self + 40;
  return self;
}

- (void)initWithConfig:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B501D000, a2, OS_LOG_TYPE_ERROR, "Configuration file %@ does not exist", &v2, 0xCu);
}

- (void)getEndpointerThresholdForClientModelVersion:(int)a1 task:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1B501D000, a2, OS_LOG_TYPE_ERROR, "EndpointerThreshold does not exist for clientModelVersion %u", v2, 8u);
}

- (void)getEndpointerExtraDelayFrequencyForTask:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B501D000, a2, OS_LOG_TYPE_ERROR, "EndpointerExtraDelayFrequency does not exist for task %@ and there is no default value returning nil", &v2, 0xCu);
}

@end