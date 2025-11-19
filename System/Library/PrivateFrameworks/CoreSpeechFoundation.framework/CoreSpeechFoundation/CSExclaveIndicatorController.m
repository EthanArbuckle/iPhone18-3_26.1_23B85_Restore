@interface CSExclaveIndicatorController
- (CSExclaveIndicatorController)init;
- (unint64_t)_getCSFSensorStatusWithExclaveSensorStatus:(unsigned int)a3;
- (unint64_t)fetchCurrentSensorStatus;
- (unint64_t)sensorStart;
- (unint64_t)sensorStop;
- (void)copyBufferWithSize:(unsigned int)a3;
- (void)dealloc;
@end

@implementation CSExclaveIndicatorController

- (unint64_t)_getCSFSensorStatusWithExclaveSensorStatus:(unsigned int)a3
{
  if (a3 - 1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1DDB1F8A0[a3 - 1];
  }
}

- (unint64_t)fetchCurrentSensorStatus
{
  sensor_port = self->_sensor_port;
  exclaves_sensor_status();
  return [(CSExclaveIndicatorController *)self _getCSFSensorStatusWithExclaveSensorStatus:0];
}

- (void)dealloc
{
  [(CSExclaveIndicatorController *)self sensorStop];
  mem = self->_mem;
  if (mem)
  {
    free(mem);
    self->_mem = 0;
  }

  v4.receiver = self;
  v4.super_class = CSExclaveIndicatorController;
  [(CSExclaveIndicatorController *)&v4 dealloc];
}

- (unint64_t)sensorStop
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_hasStarted)
  {
    sensor_port = self->_sensor_port;
    if (!exclaves_sensor_stop())
    {
      self->_hasStarted = 0;
    }

    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "[CSExclaveIndicatorController sensorStop]";
      v10 = 1024;
      v11 = 0;
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s After Sensor Stop Sensor Status : %d", buf, 0x12u);
    }

    result = [(CSExclaveIndicatorController *)self _getCSFSensorStatusWithExclaveSensorStatus:0];
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[CSExclaveIndicatorController sensorStop]";
      _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Sensor stop before start", buf, 0xCu);
    }

    result = 4;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)sensorStart
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_hasStarted)
  {
    result = 5;
  }

  else
  {
    sensor_port = self->_sensor_port;
    v5 = exclaves_sensor_start();
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "[CSExclaveIndicatorController sensorStart]";
      v10 = 1024;
      v11 = 0;
      _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s After Sensor Start Sensor Status : %d", buf, 0x12u);
    }

    if (!v5)
    {
      self->_hasStarted = 1;
    }

    result = [(CSExclaveIndicatorController *)self _getCSFSensorStatusWithExclaveSensorStatus:0];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)copyBufferWithSize:(unsigned int)a3
{
  v15 = *MEMORY[0x1E69E9840];
  buffer_port = self->_buffer_port;
  mem = self->_mem;
  v6 = exclaves_audio_buffer_copyout();
  if (v6)
  {
    v7 = v6;
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[CSExclaveIndicatorController copyBufferWithSize:]";
      v13 = 1024;
      v14 = v7;
      _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Failed EIC buffer copy : %d", &v11, 0x12u);
    }

    result = 0;
  }

  else
  {
    result = self->_mem;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (CSExclaveIndicatorController)init
{
  v18 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CSExclaveIndicatorController;
  v2 = [(CSExclaveIndicatorController *)&v13 init];
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CSExclaveIndicatorController init]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Creating EIC Sensor?", buf, 0xCu);
  }

  v4 = exclaves_sensor_create();
  if (v4)
  {
    v5 = v4;
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[CSExclaveIndicatorController init]";
      v16 = 1024;
      v17 = v5;
      _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Failed EIC sensor creation : %d", buf, 0x12u);
    }

    v7 = 0;
    goto LABEL_16;
  }

  sensor_port = v2->_sensor_port;
  exclaves_sensor_status();
  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[CSExclaveIndicatorController init]";
    v16 = 1024;
    v17 = 0;
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s After Sensor Creation Sensor Status : %d", buf, 0x12u);
  }

  v2->_mem = malloc_type_calloc(1uLL, 0x10000uLL, 0xC775CD87uLL);
  if (!exclaves_audio_buffer_create())
  {
    v2->_hasStarted = 0;
LABEL_15:
    v7 = v2;
    goto LABEL_16;
  }

  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CSExclaveIndicatorController init]";
    _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Failed EIC audio buffer creation", buf, 0xCu);
  }

  free(v2->_mem);
  v7 = 0;
  v2->_mem = 0;
LABEL_16:

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

@end