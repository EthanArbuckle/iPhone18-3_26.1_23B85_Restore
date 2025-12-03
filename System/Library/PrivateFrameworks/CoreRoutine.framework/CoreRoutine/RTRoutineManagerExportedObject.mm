@interface RTRoutineManagerExportedObject
- (RTRoutineManager)routineManager;
- (RTRoutineManagerExportedObject)initWithRoutineManager:(id)manager;
- (void)onDensityUpdate:(id)update error:(id)error;
- (void)onLeechedLowConfidenceVisit:(id)visit withError:(id)error;
- (void)onLeechedVisit:(id)visit withError:(id)error;
- (void)onPlaceInferences:(id)inferences error:(id)error;
- (void)onPredictedContextResult:(id)result error:(id)error;
- (void)onRemoteStatusUpdate:(int64_t)update error:(id)error;
- (void)onScenarioTrigger:(id)trigger withError:(id)error;
- (void)onVehicleEvents:(id)events error:(id)error;
- (void)onVisit:(id)visit withError:(id)error;
@end

@implementation RTRoutineManagerExportedObject

- (RTRoutineManagerExportedObject)initWithRoutineManager:(id)manager
{
  managerCopy = manager;
  v8.receiver = self;
  v8.super_class = RTRoutineManagerExportedObject;
  v5 = [(RTRoutineManagerExportedObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_routineManager, managerCopy);
  }

  return v6;
}

- (void)onVisit:(id)visit withError:(id)error
{
  visitCopy = visit;
  errorCopy = error;
  routineManager = [(RTRoutineManagerExportedObject *)self routineManager];
  queue = [routineManager queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__RTRoutineManagerExportedObject_onVisit_withError___block_invoke;
  block[3] = &unk_1E80B3DB8;
  block[4] = self;
  v13 = visitCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = visitCopy;
  dispatch_async(queue, block);
}

void __52__RTRoutineManagerExportedObject_onVisit_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) routineManager];
  [v2 onVisit:*(a1 + 40) withError:*(a1 + 48)];
}

- (void)onLeechedVisit:(id)visit withError:(id)error
{
  visitCopy = visit;
  errorCopy = error;
  routineManager = [(RTRoutineManagerExportedObject *)self routineManager];
  queue = [routineManager queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__RTRoutineManagerExportedObject_onLeechedVisit_withError___block_invoke;
  block[3] = &unk_1E80B3DB8;
  block[4] = self;
  v13 = visitCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = visitCopy;
  dispatch_async(queue, block);
}

void __59__RTRoutineManagerExportedObject_onLeechedVisit_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) routineManager];
  [v2 onLeechedVisit:*(a1 + 40) withError:*(a1 + 48)];
}

- (void)onLeechedLowConfidenceVisit:(id)visit withError:(id)error
{
  visitCopy = visit;
  errorCopy = error;
  routineManager = [(RTRoutineManagerExportedObject *)self routineManager];
  queue = [routineManager queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__RTRoutineManagerExportedObject_onLeechedLowConfidenceVisit_withError___block_invoke;
  block[3] = &unk_1E80B3DB8;
  block[4] = self;
  v13 = visitCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = visitCopy;
  dispatch_async(queue, block);
}

void __72__RTRoutineManagerExportedObject_onLeechedLowConfidenceVisit_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) routineManager];
  [v2 onLeechedLowConfidenceVisit:*(a1 + 40) withError:*(a1 + 48)];
}

- (void)onPlaceInferences:(id)inferences error:(id)error
{
  inferencesCopy = inferences;
  errorCopy = error;
  routineManager = [(RTRoutineManagerExportedObject *)self routineManager];
  queue = [routineManager queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__RTRoutineManagerExportedObject_onPlaceInferences_error___block_invoke;
  block[3] = &unk_1E80B3DB8;
  block[4] = self;
  v13 = inferencesCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = inferencesCopy;
  dispatch_async(queue, block);
}

void __58__RTRoutineManagerExportedObject_onPlaceInferences_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) routineManager];
  [v2 onPlaceInferences:*(a1 + 40) error:*(a1 + 48)];
}

- (void)onScenarioTrigger:(id)trigger withError:(id)error
{
  triggerCopy = trigger;
  errorCopy = error;
  routineManager = [(RTRoutineManagerExportedObject *)self routineManager];
  queue = [routineManager queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__RTRoutineManagerExportedObject_onScenarioTrigger_withError___block_invoke;
  block[3] = &unk_1E80B3DB8;
  block[4] = self;
  v13 = triggerCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = triggerCopy;
  dispatch_async(queue, block);
}

void __62__RTRoutineManagerExportedObject_onScenarioTrigger_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) routineManager];
  [v2 onScenarioTrigger:*(a1 + 40) withError:*(a1 + 48)];
}

- (void)onVehicleEvents:(id)events error:(id)error
{
  eventsCopy = events;
  errorCopy = error;
  routineManager = [(RTRoutineManagerExportedObject *)self routineManager];
  queue = [routineManager queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__RTRoutineManagerExportedObject_onVehicleEvents_error___block_invoke;
  block[3] = &unk_1E80B3DB8;
  block[4] = self;
  v13 = eventsCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = eventsCopy;
  dispatch_async(queue, block);
}

void __56__RTRoutineManagerExportedObject_onVehicleEvents_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) routineManager];
  [v2 onVehicleEvents:*(a1 + 40) error:*(a1 + 48)];
}

- (void)onPredictedContextResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  routineManager = [(RTRoutineManagerExportedObject *)self routineManager];
  queue = [routineManager queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__RTRoutineManagerExportedObject_onPredictedContextResult_error___block_invoke;
  block[3] = &unk_1E80B3DB8;
  block[4] = self;
  v13 = resultCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = resultCopy;
  dispatch_async(queue, block);
}

void __65__RTRoutineManagerExportedObject_onPredictedContextResult_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) routineManager];
  [v2 onPredictedContextResult:*(a1 + 40) error:*(a1 + 48)];
}

- (void)onRemoteStatusUpdate:(int64_t)update error:(id)error
{
  errorCopy = error;
  routineManager = [(RTRoutineManagerExportedObject *)self routineManager];
  queue = [routineManager queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__RTRoutineManagerExportedObject_onRemoteStatusUpdate_error___block_invoke;
  block[3] = &unk_1E80B3DE0;
  v11 = errorCopy;
  updateCopy = update;
  block[4] = self;
  v9 = errorCopy;
  dispatch_async(queue, block);
}

void __61__RTRoutineManagerExportedObject_onRemoteStatusUpdate_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) routineManager];
  [v2 onRemoteStatusUpdate:*(a1 + 48) error:*(a1 + 40)];
}

- (void)onDensityUpdate:(id)update error:(id)error
{
  updateCopy = update;
  errorCopy = error;
  routineManager = [(RTRoutineManagerExportedObject *)self routineManager];
  queue = [routineManager queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__RTRoutineManagerExportedObject_onDensityUpdate_error___block_invoke;
  block[3] = &unk_1E80B3DB8;
  block[4] = self;
  v13 = updateCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = updateCopy;
  dispatch_async(queue, block);
}

void __56__RTRoutineManagerExportedObject_onDensityUpdate_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) routineManager];
  [v2 onDensityUpdate:*(a1 + 40) error:*(a1 + 48)];
}

- (RTRoutineManager)routineManager
{
  WeakRetained = objc_loadWeakRetained(&self->_routineManager);

  return WeakRetained;
}

@end