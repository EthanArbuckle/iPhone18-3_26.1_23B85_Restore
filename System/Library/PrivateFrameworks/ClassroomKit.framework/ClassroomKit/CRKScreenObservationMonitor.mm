@interface CRKScreenObservationMonitor
- (BOOL)hasObservingInstructors;
- (CRKScreenObservationMonitor)init;
- (CRKScreenObservationMonitor)initWithStudentConnectionPrimitives:(id)primitives darwinNotificationPublisher:(id)publisher featureDataStore:(id)store;
- (CRKScreenObservationMonitorDelegate)delegate;
- (id)instructorIdentifiersByCourseIdentifier;
- (void)beginObservingEnrollmentStatus;
- (void)connectToStudentdIfNeeded;
- (void)dealloc;
- (void)didEstablishStudentConnection:(id)connection;
- (void)didLoseStudentConnection;
- (void)disconnectFromStudentdIfNeeded;
- (void)enrollmentStatusDidChange;
- (void)fetchObservingInstructorsByCourse;
- (void)fetchObservingInstructorsByCourseOperationDidFinish:(id)finish;
- (void)setObservingInstructorsByCourse:(id)course;
@end

@implementation CRKScreenObservationMonitor

- (void)dealloc
{
  studentConnection = [(CRKScreenObservationMonitor *)self studentConnection];
  [studentConnection invalidate];

  observersDidChangeObservation = [(CRKScreenObservationMonitor *)self observersDidChangeObservation];
  [observersDidChangeObservation invalidate];

  enrollmentStatusDidChangeSubscription = [(CRKScreenObservationMonitor *)self enrollmentStatusDidChangeSubscription];
  [enrollmentStatusDidChangeSubscription cancel];

  v6.receiver = self;
  v6.super_class = CRKScreenObservationMonitor;
  [(CRKScreenObservationMonitor *)&v6 dealloc];
}

- (CRKScreenObservationMonitor)initWithStudentConnectionPrimitives:(id)primitives darwinNotificationPublisher:(id)publisher featureDataStore:(id)store
{
  primitivesCopy = primitives;
  publisherCopy = publisher;
  storeCopy = store;
  v15.receiver = self;
  v15.super_class = CRKScreenObservationMonitor;
  v12 = [(CRKScreenObservationMonitor *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_studentConnectionPrimitives, primitives);
    objc_storeStrong(&v13->_darwinNotificationPublisher, publisher);
    objc_storeStrong(&v13->_featureDataStore, store);
    [(CRKScreenObservationMonitor *)v13 beginObservingEnrollmentStatus];
    [(CRKScreenObservationMonitor *)v13 connectToStudentdIfNeeded];
  }

  return v13;
}

- (CRKScreenObservationMonitor)init
{
  v3 = objc_opt_new();
  makePrimitives = [v3 makePrimitives];
  v5 = objc_opt_new();
  makeFeatureDataStore = [v5 makeFeatureDataStore];

  v7 = objc_opt_new();
  v8 = [(CRKScreenObservationMonitor *)self initWithStudentConnectionPrimitives:makePrimitives darwinNotificationPublisher:v7 featureDataStore:makeFeatureDataStore];

  return v8;
}

- (BOOL)hasObservingInstructors
{
  observingInstructorsByCourse = [(CRKScreenObservationMonitor *)self observingInstructorsByCourse];
  v3 = [observingInstructorsByCourse count] != 0;

  return v3;
}

- (void)setObservingInstructorsByCourse:(id)course
{
  courseCopy = course;
  observingInstructorsByCourse = self->_observingInstructorsByCourse;
  if (courseCopy | observingInstructorsByCourse)
  {
    v9 = courseCopy;
    if (([(NSDictionary *)observingInstructorsByCourse isEqual:courseCopy]& 1) == 0)
    {
      [(CRKScreenObservationMonitor *)self willChangeValueForKey:@"observingInstructorsByCourse"];
      v6 = [v9 copy];
      v7 = self->_observingInstructorsByCourse;
      self->_observingInstructorsByCourse = v6;

      [(CRKScreenObservationMonitor *)self didChangeValueForKey:@"observingInstructorsByCourse"];
      delegate = [(CRKScreenObservationMonitor *)self delegate];
      [delegate screenObservationMonitor:self observationStatusDidChange:self->_observingInstructorsByCourse];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (id)instructorIdentifiersByCourseIdentifier
{
  observingInstructorsByCourse = [(CRKScreenObservationMonitor *)self observingInstructorsByCourse];
  allKeys = [observingInstructorsByCourse allKeys];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__CRKScreenObservationMonitor_instructorIdentifiersByCourseIdentifier__block_invoke_2;
  v7[3] = &unk_278DC1FB0;
  v7[4] = self;
  v5 = [allKeys crk_dictionaryUsingKeyGenerator:&__block_literal_global_68 valueGenerator:v7];

  return v5;
}

id __70__CRKScreenObservationMonitor_instructorIdentifiersByCourseIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 courseIdentifier];
  v3 = [v2 stringValue];

  return v3;
}

id __70__CRKScreenObservationMonitor_instructorIdentifiersByCourseIdentifier__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 observingInstructorsByCourse];
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = [v5 crk_mapUsingBlock:&__block_literal_global_9_0];

  return v6;
}

- (void)enrollmentStatusDidChange
{
  featureDataStore = [(CRKScreenObservationMonitor *)self featureDataStore];
  isClassroomStudentRoleEnabled = [featureDataStore isClassroomStudentRoleEnabled];

  if (isClassroomStudentRoleEnabled)
  {

    [(CRKScreenObservationMonitor *)self connectToStudentdIfNeeded];
  }

  else
  {

    [(CRKScreenObservationMonitor *)self disconnectFromStudentdIfNeeded];
  }
}

- (void)beginObservingEnrollmentStatus
{
  objc_initWeak(&location, self);
  enrollmentStatusDidChangeSubscription = [(CRKScreenObservationMonitor *)self enrollmentStatusDidChangeSubscription];
  [enrollmentStatusDidChangeSubscription cancel];

  darwinNotificationPublisher = [(CRKScreenObservationMonitor *)self darwinNotificationPublisher];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __61__CRKScreenObservationMonitor_beginObservingEnrollmentStatus__block_invoke;
  v11 = &unk_278DC1870;
  objc_copyWeak(&v12, &location);
  v5 = [darwinNotificationPublisher subscribeToNotificationWithName:@"CRKStudentEnrollmentStatusDidChangeNotification" handler:&v8];
  [(CRKScreenObservationMonitor *)self setEnrollmentStatusDidChangeSubscription:v5, v8, v9, v10, v11];

  enrollmentStatusDidChangeSubscription2 = [(CRKScreenObservationMonitor *)self enrollmentStatusDidChangeSubscription];

  if (!enrollmentStatusDidChangeSubscription2)
  {
    v7 = _CRKLogGeneral_7();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CRKScreenObservationMonitor *)v7 beginObservingEnrollmentStatus];
    }
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __61__CRKScreenObservationMonitor_beginObservingEnrollmentStatus__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained enrollmentStatusDidChange];
}

- (void)connectToStudentdIfNeeded
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    featureDataStore = [(CRKScreenObservationMonitor *)self featureDataStore];
    if (([featureDataStore isClassroomStudentRoleEnabled] & 1) == 0)
    {
LABEL_5:

      return;
    }

    studentConnection = [(CRKScreenObservationMonitor *)self studentConnection];
    if (studentConnection)
    {

      goto LABEL_5;
    }

    isConnecting = [(CRKScreenObservationMonitor *)self isConnecting];

    if (!isConnecting)
    {
      [(CRKScreenObservationMonitor *)self setConnecting:1];
      objc_initWeak(&location, self);
      studentConnectionPrimitives = [(CRKScreenObservationMonitor *)self studentConnectionPrimitives];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __56__CRKScreenObservationMonitor_connectToStudentdIfNeeded__block_invoke;
      v10[3] = &unk_278DC2888;
      objc_copyWeak(&v11, &location);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __56__CRKScreenObservationMonitor_connectToStudentdIfNeeded__block_invoke_2;
      v8[3] = &unk_278DC1870;
      objc_copyWeak(&v9, &location);
      [studentConnectionPrimitives connectWithCompletion:v10 invalidationHandler:v8];

      objc_destroyWeak(&v9);
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }

  else
  {

    [(CRKScreenObservationMonitor *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

void __56__CRKScreenObservationMonitor_connectToStudentdIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didEstablishStudentConnection:v3];
}

void __56__CRKScreenObservationMonitor_connectToStudentdIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didLoseStudentConnection];
}

- (void)disconnectFromStudentdIfNeeded
{
  studentConnection = [(CRKScreenObservationMonitor *)self studentConnection];

  if (studentConnection)
  {
    observersDidChangeObservation = [(CRKScreenObservationMonitor *)self observersDidChangeObservation];
    [observersDidChangeObservation invalidate];

    [(CRKScreenObservationMonitor *)self setObserversDidChangeObservation:0];
    studentConnection2 = [(CRKScreenObservationMonitor *)self studentConnection];
    [studentConnection2 invalidate];

    [(CRKScreenObservationMonitor *)self setStudentConnection:0];
    v6 = MEMORY[0x277CBEC10];

    [(CRKScreenObservationMonitor *)self setObservingInstructorsByCourse:v6];
  }
}

- (void)didEstablishStudentConnection:(id)connection
{
  connectionCopy = connection;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(CRKScreenObservationMonitor *)a2 didEstablishStudentConnection:?];
  }

  objc_initWeak(&location, self);
  [(CRKScreenObservationMonitor *)self setStudentConnection:connectionCopy];
  [(CRKScreenObservationMonitor *)self setConnecting:0];
  observersDidChangeObservation = [(CRKScreenObservationMonitor *)self observersDidChangeObservation];
  [observersDidChangeObservation invalidate];

  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __61__CRKScreenObservationMonitor_didEstablishStudentConnection___block_invoke;
  v11 = &unk_278DC28B0;
  objc_copyWeak(&v12, &location);
  v7 = [connectionCopy observeNotificationWithName:@"CRKActiveInstructorsDidChange" handler:&v8];
  [(CRKScreenObservationMonitor *)self setObserversDidChangeObservation:v7, v8, v9, v10, v11];

  [(CRKScreenObservationMonitor *)self fetchObservingInstructorsByCourse];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __61__CRKScreenObservationMonitor_didEstablishStudentConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fetchObservingInstructorsByCourse];
}

- (void)didLoseStudentConnection
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(self);
  [currentHandler handleFailureInMethod:self object:a2 file:@"CRKScreenObservationMonitor.m" lineNumber:198 description:{@"%@ must be called from the main thread", v4}];
}

- (void)fetchObservingInstructorsByCourse
{
  fetchObservingInstructorsByCourseOperation = [(CRKScreenObservationMonitor *)self fetchObservingInstructorsByCourseOperation];
  [fetchObservingInstructorsByCourseOperation cancel];

  v4 = [CRKFetchObservingInstructorsByCourseOperation alloc];
  studentConnection = [(CRKScreenObservationMonitor *)self studentConnection];
  v6 = [(CRKFetchObservingInstructorsByCourseOperation *)v4 initWithRequestPerformer:studentConnection];
  [(CRKScreenObservationMonitor *)self setFetchObservingInstructorsByCourseOperation:v6];

  fetchObservingInstructorsByCourseOperation2 = [(CRKScreenObservationMonitor *)self fetchObservingInstructorsByCourseOperation];
  [fetchObservingInstructorsByCourseOperation2 addTarget:self selector:sel_fetchObservingInstructorsByCourseOperationDidFinish_ forOperationEvents:6];

  crk_backgroundQueue = [MEMORY[0x277CF9540] crk_backgroundQueue];
  fetchObservingInstructorsByCourseOperation3 = [(CRKScreenObservationMonitor *)self fetchObservingInstructorsByCourseOperation];
  [crk_backgroundQueue addOperation:fetchObservingInstructorsByCourseOperation3];
}

- (void)fetchObservingInstructorsByCourseOperationDidFinish:(id)finish
{
  finishCopy = finish;
  fetchObservingInstructorsByCourseOperation = [(CRKScreenObservationMonitor *)self fetchObservingInstructorsByCourseOperation];

  if (fetchObservingInstructorsByCourseOperation == finishCopy)
  {
    error = [finishCopy error];

    if (error)
    {
      v7 = _CRKLogGeneral_7();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CRKScreenObservationMonitor *)finishCopy fetchObservingInstructorsByCourseOperationDidFinish:v7];
      }
    }

    else
    {
      resultObject = [finishCopy resultObject];
      [(CRKScreenObservationMonitor *)self setObservingInstructorsByCourse:resultObject];
    }
  }
}

- (CRKScreenObservationMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didEstablishStudentConnection:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKScreenObservationMonitor.m" lineNumber:185 description:{@"%@ must be called from the main thread", v4}];
}

- (void)fetchObservingInstructorsByCourseOperationDidFinish:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "Error fetching observing instructors: %{public}@", &v4, 0xCu);
}

@end